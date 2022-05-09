; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/usbduxsigma.c_pt.bc'
source_filename = "../drivers/comedi/drivers/usbduxsigma.c"
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
%struct.usbduxsigma_private = type { i32, i32, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, %struct.mutex }
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

@__initcall__kmod_usbduxsigma__240_1610_usbduxsigma_driver_init6 = internal global ptr @usbduxsigma_driver_init, section ".initcall6.init", align 4
@usbduxsigma_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @usbduxsigma_detach, ptr @usbduxsigma_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbduxsigma_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbduxsigma_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbduxsigma_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbduxsigma_driver_exit = internal global ptr @usbduxsigma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [52 x i8] c"usbduxsigma.author=Bernd Porr, mail@berndporr.me.uk\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [75 x i8] c"usbduxsigma.description=Stirling/ITL USB-DUX SIGMA -- mail@berndporr.me.uk\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [52 x i8] c"usbduxsigma.file=drivers/comedi/drivers/usbduxsigma\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"usbduxsigma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [46 x i8] c"usbduxsigma.firmware=usbduxsigma_firmware.bin\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbduxsigma\00", [20 x i8] zeroinitializer }, align 32
@usbduxsigma_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&devpriv->mut\00", [18 x i8] zeroinitializer }, align 32
@usbduxsigma_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not set alternate setting 3 in high speed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxsigma_auto_attach\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/usbduxsigma.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbduxsigma_auto_attach._entry_ptr = internal global ptr @usbduxsigma_auto_attach._entry, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbduxsigma_firmware.bin\00", [39 x i8] zeroinitializer }, align 32
@range_unipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@usbduxsigma_auto_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Communication to USBDUXSIGMA failed! Check firmware and cabling.\0A\00", [62 x i8] zeroinitializer }, align 32
@usbduxsigma_auto_attach._entry_ptr.10 = internal global ptr @usbduxsigma_auto_attach._entry.8, section ".printk_index", align 4
@usbduxsigma_auto_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1554, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC_zero = %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usbduxsigma_auto_attach._entry_ptr.14 = internal global ptr @usbduxsigma_auto_attach._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbduxsigma_ai_urb_complete.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbduxsigma_ai_urb_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CRC error in ISO IN stream\0A\00", [36 x i8] zeroinitializer }, align 32
@usbduxsigma_ai_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"non-zero urb status (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@usbduxsigma_ai_urb_complete._entry_ptr = internal global ptr @usbduxsigma_ai_urb_complete._entry, section ".printk_index", align 4
@usbduxsigma_ai_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"urb resubmit failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbduxsigma_ai_handle_urb\00", [38 x i8] zeroinitializer }, align 32
@usbduxsigma_ai_handle_urb._entry_ptr = internal global ptr @usbduxsigma_ai_handle_urb._entry, section ".printk_index", align 4
@usbduxsigma_ai_handle_urb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"buggy USB host controller or bug in IRQ handler\0A\00", [47 x i8] zeroinitializer }, align 32
@usbduxsigma_ai_handle_urb._entry_ptr.22 = internal global ptr @usbduxsigma_ai_handle_urb._entry.20, section ".printk_index", align 4
@usbduxsigma_ao_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.23, ptr @.str.4, i32 415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbduxsigma_ao_urb_complete\00", [36 x i8] zeroinitializer }, align 32
@usbduxsigma_ao_urb_complete._entry_ptr = internal global ptr @usbduxsigma_ao_urb_complete._entry, section ".printk_index", align 4
@usbduxsigma_ao_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buffer underflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usbduxsigma_ao_handle_urb\00", [38 x i8] zeroinitializer }, align 32
@usbduxsigma_ao_handle_urb._entry_ptr = internal global ptr @usbduxsigma_ao_handle_urb._entry, section ".printk_index", align 4
@usbduxsigma_ao_handle_urb._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.25, ptr @.str.4, i32 379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@usbduxsigma_ao_handle_urb._entry_ptr.27 = internal global ptr @usbduxsigma_ao_handle_urb._entry.26, section ".printk_index", align 4
@usbduxsigma_ao_handle_urb._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.25, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@usbduxsigma_ao_handle_urb._entry_ptr.29 = internal global ptr @usbduxsigma_ao_handle_urb._entry.28, section ".printk_index", align 4
@usbduxsigma_firmware_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 1271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware binary too large for FX2\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbduxsigma_firmware_upload\00", [36 x i8] zeroinitializer }, align 32
@usbduxsigma_firmware_upload._entry_ptr = internal global ptr @usbduxsigma_firmware_upload._entry, section ".printk_index", align 4
@usbduxsigma_firmware_upload._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 1296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can not stop firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@usbduxsigma_firmware_upload._entry_ptr.34 = internal global ptr @usbduxsigma_firmware_upload._entry.32, section ".printk_index", align 4
@usbduxsigma_firmware_upload._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 1308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware upload failed\0A\00", [40 x i8] zeroinitializer }, align 32
@usbduxsigma_firmware_upload._entry_ptr.37 = internal global ptr @usbduxsigma_firmware_upload._entry.35, section ".printk_index", align 4
@usbduxsigma_firmware_upload._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.4, i32 1321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can not start firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@usbduxsigma_firmware_upload._entry_ptr.40 = internal global ptr @usbduxsigma_firmware_upload._entry.38, section ".printk_index", align 4
@usbduxsigma_ai_range = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -1333333, i32 1333333, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@usbduxsigma_pwm_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.42, ptr @.str.4, i32 1035, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbduxsigma_pwm_urb_complete\00", [35 x i8] zeroinitializer }, align 32
@usbduxsigma_pwm_urb_complete._entry_ptr = internal global ptr @usbduxsigma_pwm_urb_complete._entry, section ".printk_index", align 4
@usbduxsigma_pwm_urb_complete._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.42, ptr @.str.4, i32 1049, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@usbduxsigma_pwm_urb_complete._entry_ptr.44 = internal global ptr @usbduxsigma_pwm_urb_complete._entry.43, section ".printk_index", align 4
@usbduxsigma_pwm_urb_complete._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.42, ptr @.str.4, i32 1052, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@usbduxsigma_pwm_urb_complete._entry_ptr.46 = internal global ptr @usbduxsigma_pwm_urb_complete._entry.45, section ".printk_index", align 4
@usbduxsigma_usb_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5080, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5080, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5080, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 31, i64 32, i64 5000, i64 5001, i64 5002, i64 5003]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967294]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967294]
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"usbduxsigma_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1583, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"usbduxsigma_usb_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1604, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1584, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1455, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1477, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1482, i32 45 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1549, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1554, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 273, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 287, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 239, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 242, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 414, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 355, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 378, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 381, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1271, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1296, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1308, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1321, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"usbduxsigma_ai_range\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 124, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1034, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1049, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1051, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"usbduxsigma_usb_table\00", align 1
@___asan_gen_.192 = private constant [40 x i8] c"../drivers/comedi/drivers/usbduxsigma.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1596, i32 35 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_license244, ptr @__exitcall_usbduxsigma_driver_exit, ptr @__initcall__kmod_usbduxsigma__240_1610_usbduxsigma_driver_init6, ptr @usbduxsigma_ai_handle_urb._entry, ptr @usbduxsigma_ai_handle_urb._entry.20, ptr @usbduxsigma_ai_handle_urb._entry_ptr, ptr @usbduxsigma_ai_handle_urb._entry_ptr.22, ptr @usbduxsigma_ai_urb_complete._entry, ptr @usbduxsigma_ai_urb_complete._entry_ptr, ptr @usbduxsigma_ao_handle_urb._entry, ptr @usbduxsigma_ao_handle_urb._entry.26, ptr @usbduxsigma_ao_handle_urb._entry.28, ptr @usbduxsigma_ao_handle_urb._entry_ptr, ptr @usbduxsigma_ao_handle_urb._entry_ptr.27, ptr @usbduxsigma_ao_handle_urb._entry_ptr.29, ptr @usbduxsigma_ao_urb_complete._entry, ptr @usbduxsigma_ao_urb_complete._entry_ptr, ptr @usbduxsigma_auto_attach._entry, ptr @usbduxsigma_auto_attach._entry.11, ptr @usbduxsigma_auto_attach._entry.8, ptr @usbduxsigma_auto_attach._entry_ptr, ptr @usbduxsigma_auto_attach._entry_ptr.10, ptr @usbduxsigma_auto_attach._entry_ptr.14, ptr @usbduxsigma_driver_exit, ptr @usbduxsigma_firmware_upload._entry, ptr @usbduxsigma_firmware_upload._entry.32, ptr @usbduxsigma_firmware_upload._entry.35, ptr @usbduxsigma_firmware_upload._entry.38, ptr @usbduxsigma_firmware_upload._entry_ptr, ptr @usbduxsigma_firmware_upload._entry_ptr.34, ptr @usbduxsigma_firmware_upload._entry_ptr.37, ptr @usbduxsigma_firmware_upload._entry_ptr.40, ptr @usbduxsigma_pwm_urb_complete._entry, ptr @usbduxsigma_pwm_urb_complete._entry.43, ptr @usbduxsigma_pwm_urb_complete._entry.45, ptr @usbduxsigma_pwm_urb_complete._entry_ptr, ptr @usbduxsigma_pwm_urb_complete._entry_ptr.44, ptr @usbduxsigma_pwm_urb_complete._entry_ptr.46, ptr @usbduxsigma_driver, ptr @usbduxsigma_usb_driver, ptr @.str, ptr @usbduxsigma_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @usbduxsigma_ai_range, ptr @.str.42, ptr @usbduxsigma_usb_table], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_auto_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_auto_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ai_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ai_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ai_handle_urb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ao_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ao_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ao_handle_urb._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ao_handle_urb._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_firmware_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_firmware_upload._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_firmware_upload._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_firmware_upload._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_ai_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_pwm_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_pwm_urb_complete._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_pwm_urb_complete._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsigma_usb_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @usbduxsigma_driver, ptr noundef nonnull @usbduxsigma_usb_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsigma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @usbduxsigma_driver, ptr noundef nonnull @usbduxsigma_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsigma_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %ai_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ai_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.usbduxsigma_ai_stop.exit_crit_edge, label %if.then.i

if.end.usbduxsigma_ai_stop.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

if.then.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.i.i = icmp sgt i32 %8, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbduxsigma_ai_stop.exit_crit_edge

if.then.i.usbduxsigma_ai_stop.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %i.04.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #10
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %8
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

usbduxsigma_ai_stop.exit:                         ; preds = %for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge, %if.then.i.usbduxsigma_ai_stop.exit_crit_edge, %if.end.usbduxsigma_ai_stop.exit_crit_edge
  %ai_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %ai_cmd_running.i, align 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ao_urbs.i, align 4
  %tobool1.not.i13 = icmp eq ptr %15, null
  br i1 %tobool1.not.i13, label %usbduxsigma_ai_stop.exit.usbduxsigma_ao_stop.exit_crit_edge, label %if.then.i15

usbduxsigma_ai_stop.exit.usbduxsigma_ao_stop.exit_crit_edge: ; preds = %usbduxsigma_ai_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

if.then.i15:                                      ; preds = %usbduxsigma_ai_stop.exit
  %n_ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i.i14 = icmp sgt i32 %17, 0
  br i1 %cmp3.i.i14, label %if.then.i15.for.body.i.i20_crit_edge, label %if.then.i15.usbduxsigma_ao_stop.exit_crit_edge

if.then.i15.usbduxsigma_ao_stop.exit_crit_edge:   ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

if.then.i15.for.body.i.i20_crit_edge:             ; preds = %if.then.i15
  br label %for.body.i.i20

for.body.i.i20:                                   ; preds = %for.body.i.i20.for.body.i.i20_crit_edge, %if.then.i15.for.body.i.i20_crit_edge
  %i.04.i.i16 = phi i32 [ %inc.i.i18, %for.body.i.i20.for.body.i.i20_crit_edge ], [ 0, %if.then.i15.for.body.i.i20_crit_edge ]
  %arrayidx.i.i17 = getelementptr ptr, ptr %15, i32 %i.04.i.i16
  %18 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i17, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #10
  %inc.i.i18 = add nuw nsw i32 %i.04.i.i16, 1
  %exitcond.not.i.i19 = icmp eq i32 %inc.i.i18, %17
  br i1 %exitcond.not.i.i19, label %for.body.i.i20.usbduxsigma_ao_stop.exit_crit_edge, label %for.body.i.i20.for.body.i.i20_crit_edge

for.body.i.i20.for.body.i.i20_crit_edge:          ; preds = %for.body.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i20

for.body.i.i20.usbduxsigma_ao_stop.exit_crit_edge: ; preds = %for.body.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

usbduxsigma_ao_stop.exit:                         ; preds = %for.body.i.i20.usbduxsigma_ao_stop.exit_crit_edge, %if.then.i15.usbduxsigma_ao_stop.exit_crit_edge, %usbduxsigma_ai_stop.exit.usbduxsigma_ao_stop.exit_crit_edge
  %ao_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %13, i32 0, i32 10
  %20 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i21 = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i22 = and i8 %bf.load.i21, -33
  store i8 %bf.clear.i22, ptr %ao_cmd_running.i, align 4
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private, align 4
  %pwm_urb.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwm_urb.i, align 4
  %tobool1.not.i24 = icmp eq ptr %24, null
  br i1 %tobool1.not.i24, label %usbduxsigma_ao_stop.exit.usbduxsigma_pwm_stop.exit_crit_edge, label %if.then2.i

usbduxsigma_ao_stop.exit.usbduxsigma_pwm_stop.exit_crit_edge: ; preds = %usbduxsigma_ao_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_pwm_stop.exit

if.then2.i:                                       ; preds = %usbduxsigma_ao_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %24) #10
  br label %usbduxsigma_pwm_stop.exit

usbduxsigma_pwm_stop.exit:                        ; preds = %if.then2.i, %usbduxsigma_ao_stop.exit.usbduxsigma_pwm_stop.exit_crit_edge
  %pwm_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %22, i32 0, i32 10
  %25 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i26 = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.clear.i27 = and i8 %bf.load.i26, -17
  store i8 %bf.clear.i27, ptr %pwm_cmd_running.i, align 4
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  %pwm_urb.i29 = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %pwm_urb.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwm_urb.i29, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %usbduxsigma_pwm_stop.exit.if.end.i_crit_edge, label %if.then.i30

usbduxsigma_pwm_stop.exit.if.end.i_crit_edge:     ; preds = %usbduxsigma_pwm_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i30:                                      ; preds = %usbduxsigma_pwm_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %31) #10
  tail call void @usb_free_urb(ptr noundef nonnull %29) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i30, %usbduxsigma_pwm_stop.exit.if.end.i_crit_edge
  %ao_urbs.i31 = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %ao_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ao_urbs.i31, align 4
  %tobool1.not.i32 = icmp eq ptr %33, null
  br i1 %tobool1.not.i32, label %if.end.i.if.end9.i_crit_edge, label %for.cond.preheader.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %n_ao_urbs.i33 = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %n_ao_urbs.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_ao_urbs.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp52.i = icmp sgt i32 %35, 0
  br i1 %cmp52.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %ao_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ao_urbs.i31, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.053.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer6.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transfer_buffer6.i, align 4
  tail call void @kfree(ptr noundef %41) #10
  tail call void @usb_free_urb(ptr noundef nonnull %39) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %42 = ptrtoint ptr %n_ao_urbs.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_ao_urbs.i33, align 4
  %cmp.i = icmp slt i32 %inc.i, %43
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %44 = ptrtoint ptr %ao_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ao_urbs.i31, align 4
  tail call void @kfree(ptr noundef %45) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i, %if.end.i.if.end9.i_crit_edge
  %ai_urbs.i34 = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 2
  %46 = ptrtoint ptr %ai_urbs.i34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ai_urbs.i34, align 4
  %tobool10.not.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i, label %if.end9.i.usbduxsigma_free_usb_buffers.exit_crit_edge, label %for.cond12.preheader.i

if.end9.i.usbduxsigma_free_usb_buffers.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_free_usb_buffers.exit

for.cond12.preheader.i:                           ; preds = %if.end9.i
  %48 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1354.i = icmp sgt i32 %49, 0
  br i1 %cmp1354.i, label %for.cond12.preheader.i.for.body14.i_crit_edge, label %for.cond12.preheader.i.for.end23.i_crit_edge

for.cond12.preheader.i.for.end23.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23.i

for.cond12.preheader.i.for.body14.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc21.i.for.body14.i_crit_edge, %for.cond12.preheader.i.for.body14.i_crit_edge
  %i.155.i = phi i32 [ %inc22.i, %for.inc21.i.for.body14.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body14.i_crit_edge ]
  %50 = ptrtoint ptr %ai_urbs.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ai_urbs.i34, align 4
  %arrayidx16.i = getelementptr ptr, ptr %51, i32 %i.155.i
  %52 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %53, null
  br i1 %tobool17.not.i, label %for.body14.i.for.inc21.i_crit_edge, label %if.then18.i

for.body14.i.for.inc21.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21.i

if.then18.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer19.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %transfer_buffer19.i, align 4
  tail call void @kfree(ptr noundef %55) #10
  tail call void @usb_free_urb(ptr noundef nonnull %53) #10
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then18.i, %for.body14.i.for.inc21.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.155.i, 1
  %56 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %27, align 4
  %cmp13.i = icmp slt i32 %inc22.i, %57
  br i1 %cmp13.i, label %for.inc21.i.for.body14.i_crit_edge, label %for.inc21.i.for.end23.i_crit_edge

for.inc21.i.for.end23.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23.i

for.inc21.i.for.body14.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.end23.i:                                      ; preds = %for.inc21.i.for.end23.i_crit_edge, %for.cond12.preheader.i.for.end23.i_crit_edge
  %58 = ptrtoint ptr %ai_urbs.i34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ai_urbs.i34, align 4
  tail call void @kfree(ptr noundef %59) #10
  br label %usbduxsigma_free_usb_buffers.exit

usbduxsigma_free_usb_buffers.exit:                ; preds = %for.end23.i, %if.end9.i.usbduxsigma_free_usb_buffers.exit_crit_edge
  %insn_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 9
  %60 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %insn_buf.i, align 4
  tail call void @kfree(ptr noundef %61) #10
  %in_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 8
  %62 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_buf.i, align 4
  tail call void @kfree(ptr noundef %63) #10
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 16
  %64 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dux_commands.i, align 4
  tail call void @kfree(ptr noundef %65) #10
  tail call void @mutex_unlock(ptr noundef %mut) #10
  tail call void @mutex_destroy(ptr noundef %mut) #10
  br label %cleanup

cleanup:                                          ; preds = %usbduxsigma_free_usb_buffers.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #10
  %call1 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %call2 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 160) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %call2, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mut, ptr noundef nonnull @.str.1, ptr noundef nonnull @usbduxsigma_auto_attach.__key) #10
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
  %high_speed = getelementptr inbounds %struct.usbduxsigma_private, ptr %call2, i32 0, i32 10
  %3 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %high_speed, align 4
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %high_speed, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %call2, align 4
  %pwm_buf_sz = getelementptr inbounds %struct.usbduxsigma_private, ptr %call2, i32 0, i32 7
  %5 = ptrtoint ptr %pwm_buf_sz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %pwm_buf_sz, align 4
  br label %if.end9

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %call2, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %.sink = phi i32 [ 10, %if.then6 ], [ 5, %if.else ]
  %7 = getelementptr inbounds %struct.usbduxsigma_private, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 26) #13
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 16
  %12 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %dux_commands.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i143.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 68) #13
  %in_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 8
  %14 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i143.i, ptr %in_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i144.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #13
  %insn_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 9
  %16 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i144.i, ptr %insn_buf.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #10
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end9.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !112

if.end9.kcalloc.exit.i_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #14
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %if.end9.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %if.end9.kcalloc.exit.i_crit_edge ]
  %ai_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i.i, ptr %ai_urbs.i, align 4
  %n_ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 1
  %23 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_ao_urbs.i, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #10
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit.i.kcalloc.exit177.i_crit_edge, label %if.end7.i.i175.i, !prof !112

kcalloc.exit.i.kcalloc.exit177.i_crit_edge:       ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit177.i

if.end7.i.i175.i:                                 ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = extractvalue { i32, i1 } %25, 0
  %call8.i.i174.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #14
  br label %kcalloc.exit177.i

kcalloc.exit177.i:                                ; preds = %if.end7.i.i175.i, %kcalloc.exit.i.kcalloc.exit177.i_crit_edge
  %retval.0.i.i176.i = phi ptr [ %call8.i.i174.i, %if.end7.i.i175.i ], [ null, %kcalloc.exit.i.kcalloc.exit177.i_crit_edge ]
  %ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 3
  %28 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i176.i, ptr %ao_urbs.i, align 4
  %29 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dux_commands.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %kcalloc.exit177.i.cleanup_crit_edge, label %lor.lhs.false.i

kcalloc.exit177.i.cleanup_crit_edge:              ; preds = %kcalloc.exit177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %kcalloc.exit177.i
  %31 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %32, null
  br i1 %tobool8.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %insn_buf.i, align 4
  %tobool11.not.i = icmp eq ptr %34, null
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %35 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ai_urbs.i, align 4
  %tobool14.not.i = icmp eq ptr %36, null
  %tobool17.not.i = icmp eq ptr %retval.0.i.i176.i, null
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %lor.lhs.false12.i.cleanup_crit_edge, label %for.cond.preheader.i

lor.lhs.false12.i.cleanup_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %lor.lhs.false12.i
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp195.i = icmp sgt i32 %38, 0
  br i1 %cmp195.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond35.preheader.i_crit_edge

for.cond.preheader.i.for.cond35.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond35.preheader.i:                           ; preds = %if.end31.i.for.cond35.preheader.i_crit_edge, %for.cond.preheader.i.for.cond35.preheader.i_crit_edge
  %39 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp37197.i = icmp sgt i32 %40, 0
  br i1 %cmp37197.i, label %for.cond35.preheader.i.for.body38.i_crit_edge, label %for.cond35.preheader.i.for.end68.i_crit_edge

for.cond35.preheader.i.for.end68.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68.i

for.cond35.preheader.i.for.body38.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body38.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0196.i = phi i32 [ %inc.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #10
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body.i.cleanup_crit_edge, label %if.end22.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22.i:                                       ; preds = %for.body.i
  %41 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ai_urbs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %i.0196.i
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
  store ptr null, ptr %context.i, align 4
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
  %call7.i.i180.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 68) #13
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i180.i, ptr %transfer_buffer.i, align 4
  %tobool29.not.i = icmp eq ptr %call7.i.i180.i, null
  br i1 %tobool29.not.i, label %if.end22.i.cleanup_crit_edge, label %if.end31.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.i:                                       ; preds = %if.end22.i
  %complete.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 28
  %52 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @usbduxsigma_ai_urb_complete, ptr %complete.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 24
  %53 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 68, ptr %transfer_buffer_length.i, align 4
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 29
  %55 = ptrtoint ptr %iso_frame_desc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %iso_frame_desc.i, align 4
  %length.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 1, i32 1
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 68, ptr %length.i, align 4
  %inc.i = add nuw nsw i32 %i.0196.i, 1
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %10, align 4
  %cmp.i = icmp slt i32 %inc.i, %58
  br i1 %cmp.i, label %if.end31.i.for.body.i_crit_edge, label %if.end31.i.for.cond35.preheader.i_crit_edge

if.end31.i.for.cond35.preheader.i_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader.i

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body38.i:                                     ; preds = %if.end56.i.for.body38.i_crit_edge, %for.cond35.preheader.i.for.body38.i_crit_edge
  %i.1198.i = phi i32 [ %inc67.i, %if.end56.i.for.body38.i_crit_edge ], [ 0, %for.cond35.preheader.i.for.body38.i_crit_edge ]
  %call39.i = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #10
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %for.body38.i.cleanup_crit_edge, label %if.end42.i

for.body38.i.cleanup_crit_edge:                   ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.i:                                       ; preds = %for.body38.i
  %59 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ao_urbs.i, align 4
  %arrayidx44.i = getelementptr ptr, ptr %60, i32 %i.1198.i
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
  store ptr null, ptr %context46.i, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call.i, align 8
  %shl.i181.i = shl i32 %65, 8
  %or.i182.i = or i32 %shl.i181.i, 65536
  %pipe49.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 10
  %66 = ptrtoint ptr %pipe49.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i182.i, ptr %pipe49.i, align 4
  %transfer_flags50.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 13
  %67 = ptrtoint ptr %transfer_flags50.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %transfer_flags50.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i185.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 24) #13
  %transfer_buffer52.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 14
  %69 = ptrtoint ptr %transfer_buffer52.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i185.i, ptr %transfer_buffer52.i, align 4
  %tobool54.not.i = icmp eq ptr %call7.i.i185.i, null
  br i1 %tobool54.not.i, label %if.end42.i.cleanup_crit_edge, label %if.end56.i

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56.i:                                       ; preds = %if.end42.i
  %complete57.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 28
  %70 = ptrtoint ptr %complete57.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @usbduxsigma_ao_urb_complete, ptr %complete57.i, align 4
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
  %interval.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 25
  %75 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %interval.i, align 4
  %inc67.i = add nuw nsw i32 %i.1198.i, 1
  %76 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_ao_urbs.i, align 4
  %cmp37.i = icmp slt i32 %inc67.i, %77
  br i1 %cmp37.i, label %if.end56.i.for.body38.i_crit_edge, label %if.end56.i.for.end68.i_crit_edge

if.end56.i.for.end68.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68.i

if.end56.i.for.body38.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

for.end68.i:                                      ; preds = %if.end56.i.for.end68.i_crit_edge, %for.cond35.preheader.i.for.end68.i_crit_edge
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 7
  %78 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pwm_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool69.not.i = icmp eq i32 %79, 0
  br i1 %tobool69.not.i, label %for.end68.i.if.end13_crit_edge, label %if.then70.i

for.end68.i.if.end13_crit_edge:                   ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then70.i:                                      ; preds = %for.end68.i
  %call71.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool72.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool72.not.i, label %if.then70.i.cleanup_crit_edge, label %if.end74.i

if.then70.i.cleanup_crit_edge:                    ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74.i:                                       ; preds = %if.then70.i
  %pwm_urb.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %10, i32 0, i32 4
  %80 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call71.i, ptr %pwm_urb.i, align 4
  %81 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pwm_buf_sz.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #14
  %transfer_buffer77.i = getelementptr inbounds %struct.urb, ptr %call71.i, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer77.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call9.i.i.i, ptr %transfer_buffer77.i, align 4
  %tobool79.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool79.not.i, label %if.end74.i.cleanup_crit_edge, label %if.end74.i.if.end13_crit_edge

if.end74.i.if.end13_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end74.i.cleanup_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end74.i.if.end13_crit_edge, %for.end68.i.if.end13_crit_edge
  %84 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bInterfaceNumber, align 2
  %conv14 = zext i8 %87 to i32
  %call15 = tail call i32 @usb_set_interface(ptr noundef %call1, i32 noundef %conv14, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %88 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  %call24 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev23, ptr noundef nonnull @.str.7, ptr noundef nonnull @usbduxsigma_firmware_upload, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %90 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load29 = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %tobool32.not = icmp sgt i8 %bf.load29, -1
  %cond = select i1 %tobool32.not, i32 3, i32 4
  %call33 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %91 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %93 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 2
  %94 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 4
  %95 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 269582336, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 3
  %96 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 5
  %97 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 16, ptr %len_chanlist, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 13
  %98 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16777215, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 15
  %99 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @usbduxsigma_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 18
  %100 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @usbduxsigma_ai_insn_read, ptr %insn_read, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 23
  %101 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @usbduxsigma_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 22
  %102 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @usbduxsigma_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 25
  %103 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @usbduxsigma_ai_cancel, ptr %cancel, align 4
  %104 = load ptr, ptr %subdevices, align 4
  %arrayidx38 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %105 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx38, ptr %write_subdev, align 4
  %type39 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 2
  %106 = ptrtoint ptr %type39 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %type39, align 4
  %subdev_flags40 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 4
  %107 = ptrtoint ptr %subdev_flags40 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1196032, ptr %subdev_flags40, align 4
  %n_chan41 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 3
  %108 = ptrtoint ptr %n_chan41 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 4, ptr %n_chan41, align 4
  %len_chanlist43 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 5
  %109 = ptrtoint ptr %len_chanlist43 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %len_chanlist43, align 4
  %maxdata44 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 13
  %110 = ptrtoint ptr %maxdata44 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 255, ptr %maxdata44, align 4
  %range_table45 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 15
  %111 = ptrtoint ptr %range_table45 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @range_unipolar2_5, ptr %range_table45, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 19
  %112 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @usbduxsigma_ao_insn_write, ptr %insn_write, align 4
  %insn_read46 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 18
  %113 = ptrtoint ptr %insn_read46 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @usbduxsigma_ao_insn_read, ptr %insn_read46, align 4
  %do_cmdtest47 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 23
  %114 = ptrtoint ptr %do_cmdtest47 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @usbduxsigma_ao_cmdtest, ptr %do_cmdtest47, align 4
  %do_cmd48 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 22
  %115 = ptrtoint ptr %do_cmd48 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @usbduxsigma_ao_cmd, ptr %do_cmd48, align 4
  %cancel49 = getelementptr %struct.comedi_subdevice, ptr %104, i32 1, i32 25
  %116 = ptrtoint ptr %cancel49 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @usbduxsigma_ao_cancel, ptr %cancel49, align 4
  %call50 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %if.end36
  %117 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %subdevices, align 4
  %type56 = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 2
  %119 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 5, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 4
  %120 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196608, ptr %subdev_flags57, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 3
  %121 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 24, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 13
  %122 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %maxdata59, align 4
  %range_table60 = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 15
  %123 = ptrtoint ptr %range_table60 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @range_unipolar5, ptr %range_table60, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 20
  %124 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @usbduxsigma_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %118, i32 2, i32 21
  %125 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @usbduxsigma_dio_insn_config, ptr %insn_config, align 4
  %126 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load62 = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load62)
  %tobool65.not = icmp sgt i8 %bf.load62, -1
  br i1 %tobool65.not, label %if.end53.if.end77_crit_edge, label %if.then66

if.end53.if.end77_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then66:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %subdevices, align 4
  %type69 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 2
  %129 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 12, ptr %type69, align 4
  %subdev_flags70 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 4
  %130 = ptrtoint ptr %subdev_flags70 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 131328, ptr %subdev_flags70, align 4
  %n_chan71 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 3
  %131 = ptrtoint ptr %n_chan71 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 8, ptr %n_chan71, align 4
  %pwm_buf_sz72 = getelementptr inbounds %struct.usbduxsigma_private, ptr %call2, i32 0, i32 7
  %132 = ptrtoint ptr %pwm_buf_sz72 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pwm_buf_sz72, align 4
  %maxdata73 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 13
  %134 = ptrtoint ptr %maxdata73 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %maxdata73, align 4
  %insn_write74 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 19
  %135 = ptrtoint ptr %insn_write74 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @usbduxsigma_pwm_write, ptr %insn_write74, align 4
  %insn_config75 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 21
  %136 = ptrtoint ptr %insn_config75 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @usbduxsigma_pwm_config, ptr %insn_config75, align 4
  %137 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %private.i, align 4
  %pwm_delay.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %pwm_delay.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 101, ptr %pwm_delay.i, align 4
  %pwm_period.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %138, i32 0, i32 5
  %140 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 10000000, ptr %pwm_period.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %if.end53.if.end77_crit_edge
  %call78 = tail call fastcc i32 @usbduxsigma_getstatusinfo(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  %class_dev85 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %141 = ptrtoint ptr %class_dev85 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %class_dev85, align 4
  br i1 %cmp79, label %do.end84, label %do.end89

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.9) #15
  br label %cleanup

do.end89:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.12, i32 noundef %call78) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %do.end84, %if.end36.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end21, %if.end74.i.cleanup_crit_edge, %if.then70.i.cleanup_crit_edge, %if.end42.i.cleanup_crit_edge, %for.body38.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.lhs.false12.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %kcalloc.exit177.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end21 ], [ %call78, %do.end84 ], [ 0, %do.end89 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call33, %if.end27.cleanup_crit_edge ], [ %call50, %if.end36.cleanup_crit_edge ], [ -12, %lor.lhs.false12.i.cleanup_crit_edge ], [ -12, %lor.lhs.false9.i.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %kcalloc.exit177.i.cleanup_crit_edge ], [ -12, %if.then70.i.cleanup_crit_edge ], [ -12, %if.end74.i.cleanup_crit_edge ], [ -12, %for.body38.i.cleanup_crit_edge ], [ -12, %if.end42.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ], [ -12, %if.end22.i.cleanup_crit_edge ]
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
define internal i32 @usbduxsigma_firmware_upload(ptr noundef %dev, ptr noundef %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %size)
  %cmp = icmp ugt i32 %size, 16384
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef %size, i32 noundef 3264) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #13
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call3) #10
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
  %call12 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.done.sink.split_crit_edge, label %if.end19

if.end10.done.sink.split_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.sink.split

if.end19:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 8
  %shl.i68 = shl i32 %7, 8
  %or21 = or i32 %shl.i68, -2147483648
  %conv = trunc i32 %size to i16
  %call22 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or21, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call3, i16 noundef zeroext %conv, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.done.sink.split_crit_edge, label %if.end30

if.end19.done.sink.split_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
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
  %call33 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or32, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end30.done.sink.split_crit_edge, label %if.end30.done_crit_edge

if.end30.done_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end30.done.sink.split_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end30.done.sink.split_crit_edge, %if.end19.done.sink.split_crit_edge, %if.end10.done.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.33, %if.end10.done.sink.split_crit_edge ], [ @.str.36, %if.end19.done.sink.split_crit_edge ], [ @.str.39, %if.end30.done.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call12, %if.end10.done.sink.split_crit_edge ], [ %call22, %if.end19.done.sink.split_crit_edge ], [ %call33, %if.end30.done.sink.split_crit_edge ]
  %class_dev40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.39.sink) #15
  br label %done

done:                                             ; preds = %done.sink.split, %if.end30.done_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end30.done_crit_edge ], [ %ret.0.ph, %done.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  tail call void @kfree(ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then9, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %done ], [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ai_insn_read(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  %muxsg0 = alloca i8, align 1
  %muxsg1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %muxsg0)
  %4 = ptrtoint ptr %muxsg0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %muxsg0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %muxsg1)
  %5 = ptrtoint ptr %muxsg1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %muxsg1, align 1
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ai_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup26

if.end:                                           ; preds = %entry
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp.i = icmp ult i32 %and, 8
  br i1 %cmp.i, label %if.end.if.end9.sink.split.i_crit_edge, label %if.else.i

if.end.if.end9.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp2.i = icmp ult i32 %and, 16
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i.create_adc_command.exit_crit_edge

if.else.i.create_adc_command.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_adc_command.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %and, -8
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then4.i, %if.end.if.end9.sink.split.i_crit_edge
  %sub.sink.i = phi i32 [ %sub.i, %if.then4.i ], [ %and, %if.end.if.end9.sink.split.i_crit_edge ]
  %muxsg1.sink.i = phi ptr [ %muxsg1, %if.then4.i ], [ %muxsg0, %if.end.if.end9.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %muxsg1.sink.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %.sink.i = load i8, ptr %muxsg1.sink.i, align 1
  %shl6.i = shl nuw nsw i32 1, %sub.sink.i
  %9 = trunc i32 %shl6.i to i8
  %conv8.i = or i8 %.sink.i, %9
  store i8 %conv8.i, ptr %muxsg1.sink.i, align 1
  br label %create_adc_command.exit

create_adc_command.exit:                          ; preds = %if.end9.sink.split.i, %if.else.i.create_adc_command.exit_crit_edge
  %dux_commands = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 22, ptr %arrayidx, align 1
  %13 = load ptr, ptr %dux_commands, align 4
  %arrayidx3 = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %arrayidx3, align 1
  %15 = load ptr, ptr %dux_commands, align 4
  %arrayidx5 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx5, align 1
  %17 = ptrtoint ptr %muxsg0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %muxsg0.0.muxsg0.0. = load i8, ptr %muxsg0, align 1
  %18 = load ptr, ptr %dux_commands, align 4
  %arrayidx7 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %muxsg0.0.muxsg0.0., ptr %arrayidx7, align 1
  %20 = ptrtoint ptr %muxsg1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %muxsg1.0.muxsg1.0. = load i8, ptr %muxsg1, align 1
  %21 = load ptr, ptr %dux_commands, align 4
  %arrayidx9 = getelementptr i8, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %muxsg1.0.muxsg1.0., ptr %arrayidx9, align 1
  %23 = load ptr, ptr %dux_commands, align 4
  %arrayidx11 = getelementptr i8, ptr %23, i32 6
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx11, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #10
  %27 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %nsent.i, align 4, !annotation !113
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %26, i32 0, i32 16
  %28 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dux_commands.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %29, align 1
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %32, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %33 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %33, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %if.then12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %create_adc_command.exit
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1568.not = icmp eq i32 %35, 0
  br i1 %cmp1568.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %insn_buf = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 9
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

if.then12:                                        ; preds = %create_adc_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i55 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #10
  %38 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %nrec.i, align 4, !annotation !113
  %insn_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %37, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %i.019.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %call.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i55, align 8
  %shl.i.i57 = shl i32 %40, 8
  %or2.i = or i32 %shl.i.i57, -1073479552
  %41 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %insn_buf.i, align 4
  %call3.i58 = call i32 @usb_bulk_msg(ptr noundef %call.i55, i32 noundef %or2.i, ptr noundef %42, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i58)
  %cmp4.i = icmp slt i32 %call3.i58, 0
  br i1 %cmp4.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %43 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %insn_buf.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %46)
  %cmp6.i = icmp eq i8 %46, 4
  br i1 %cmp6.i, label %for.inc, label %for.cond.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.cleanup_crit_edge ], [ %call3.i58, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup26

for.inc:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  %47 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %insn_buf, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 1
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr, align 1
  %and21 = and i32 %50, 16777215
  %51 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %52, %and21
  %shr.i = lshr i32 %52, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %arrayidx23 = getelementptr i32, ptr %data, i32 %i.069
  %53 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %xor2.i, ptr %arrayidx23, align 4
  %inc = add nuw i32 %i.069, 1
  %54 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n, align 4
  %cmp15 = icmp ult i32 %inc, %55
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mut) #10
  %56 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %for.end, %cleanup, %if.then12, %if.then
  %retval.2 = phi i32 [ -16, %if.then ], [ %call3.i, %if.then12 ], [ %retval.0.i.ph, %cleanup ], [ %57, %for.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %muxsg1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %muxsg0)
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbduxsigma_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %high_speed1 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %high_speed1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %high_speed1, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %3 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp1.inv.i = icmp sgt i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.inv.i = icmp sgt i32 %4, 2
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_src, align 4
  %and.i = and i32 %6, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %6)
  %cmp1.not.i = icmp eq i32 %and.i, %6
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_begin_src, align 4
  %and.i95 = and i32 %8, 16
  store i32 %and.i95, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %cmp.i96 = icmp ne i32 %and.i95, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i95, i32 %8)
  %cmp1.not.i97 = icmp eq i32 %and.i95, %8
  %or.cond.i98 = and i1 %cmp.i96, %cmp1.not.i97
  %9 = select i1 %or.cond.i, i1 %or.cond.i98, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %10 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %convert_src, align 4
  %and.i100 = and i32 %11, 2
  store i32 %and.i100, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %cmp.i101 = icmp ne i32 %and.i100, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i100, i32 %11)
  %cmp1.not.i102 = icmp eq i32 %and.i100, %11
  %or.cond.i103 = and i1 %cmp.i101, %cmp1.not.i102
  %12 = select i1 %9, i1 %or.cond.i103, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %13 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_end_src, align 4
  %and.i105 = and i32 %14, 32
  store i32 %and.i105, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %cmp.i106 = icmp ne i32 %and.i105, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i105, i32 %14)
  %cmp1.not.i107 = icmp eq i32 %and.i105, %14
  %or.cond.i108 = and i1 %cmp.i106, %cmp1.not.i107
  %15 = select i1 %12, i1 %or.cond.i108, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %16 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stop_src, align 4
  %and.i110 = and i32 %17, 33
  store i32 %and.i110, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp.i111 = icmp ne i32 %and.i110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i110, i32 %17)
  %cmp1.not.i112 = icmp eq i32 %and.i110, %17
  %or.cond.i113 = and i1 %cmp.i111, %cmp1.not.i112
  %18 = select i1 %15, i1 %or.cond.i113, i1 false
  br i1 %18, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = tail call i32 @llvm.ctpop.i32(i32 %6) #10, !range !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i = icmp ult i32 %19, 2
  %20 = tail call i32 @llvm.ctpop.i32(i32 %17) #10, !range !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not.i116 = icmp ult i32 %20, 2
  %21 = select i1 %cmp.not.i, i1 %cmp.not.i116, i1 false
  br i1 %21, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i118 = icmp eq i32 %23, 0
  br i1 %cmp.not.i118, label %if.end19.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end19.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end19.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i119 = phi i32 [ -22, %if.then.i ], [ 0, %if.end19.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  %scan_begin_arg26 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %..i.op = select i1 %cmp1.inv.i, i32 1000000, i32 500000
  %mul = select i1 %cmp.inv.i, i32 %..i.op, i32 250000
  %25 = ptrtoint ptr %scan_begin_arg26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_begin_arg26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mul)
  %cmp.i120 = icmp ult i32 %26, %mul
  br i1 %cmp.i120, label %if.then23.if.end29.sink.split_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then23.if.end29.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit
  %27 = ptrtoint ptr %scan_begin_arg26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_begin_arg26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %28)
  %cmp.i123 = icmp ult i32 %28, 1000000
  br i1 %cmp.i123, label %if.else.if.end29.sink.split_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.then23.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ %mul, %if.then23.if.end29.sink.split_crit_edge ], [ 1000000, %if.else.if.end29.sink.split_crit_edge ]
  %29 = ptrtoint ptr %scan_begin_arg26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %scan_begin_arg26, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %call24.pn = phi i32 [ 0, %if.then23.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ -22, %if.end29.sink.split ]
  %err.0 = or i32 %call24.pn, %retval.0.i119
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %4)
  %cmp.not.i127 = icmp eq i32 %31, %4
  br i1 %cmp.not.i127, label %if.end29.comedi_check_trigger_arg_is.exit130_crit_edge, label %if.then.i128

if.end29.comedi_check_trigger_arg_is.exit130_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit130

if.then.i128:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %4, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit130

comedi_check_trigger_arg_is.exit130:              ; preds = %if.then.i128, %if.end29.comedi_check_trigger_arg_is.exit130_crit_edge
  %retval.0.i129 = phi i32 [ -22, %if.then.i128 ], [ 0, %if.end29.comedi_check_trigger_arg_is.exit130_crit_edge ]
  %or32 = or i32 %err.0, %retval.0.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp = icmp eq i32 %17, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i131 = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then34, label %if.else37

if.then34:                                        ; preds = %comedi_check_trigger_arg_is.exit130
  br i1 %cmp.i131, label %if.then34.if.end41.sink.split_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then34.if.end41.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split

if.else37:                                        ; preds = %comedi_check_trigger_arg_is.exit130
  br i1 %cmp.i131, label %if.else37.if.end41_crit_edge, label %if.else37.if.end41.sink.split_crit_edge

if.else37.if.end41.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.sink.split

if.else37.if.end41_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else37.if.end41.sink.split_crit_edge, %if.then34.if.end41.sink.split_crit_edge
  %.sink145 = phi i32 [ 1, %if.then34.if.end41.sink.split_crit_edge ], [ 0, %if.else37.if.end41.sink.split_crit_edge ]
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink145, ptr %stop_arg, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else37.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %call35.pn = phi i32 [ 0, %if.then34.if.end41_crit_edge ], [ 0, %if.else37.if.end41_crit_edge ], [ -22, %if.end41.sink.split ]
  %err.1 = or i32 %or32, %call35.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool42.not = icmp eq i32 %err.1, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %scan_begin_arg45 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %36 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_begin_arg45, align 4
  %cond = select i1 %tobool22.not, i32 1000000, i32 125000
  %rem = urem i32 %37, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not.i139 = icmp eq i32 %rem, 0
  br i1 %cmp.not.i139, label %if.end44.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit142

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

comedi_check_trigger_arg_is.exit142:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %37, %rem
  %38 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %scan_begin_arg45, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit142, %if.end44.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit142 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  %muxsg0 = alloca i8, align 1
  %muxsg1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %muxsg0)
  %6 = ptrtoint ptr %muxsg0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %muxsg0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %muxsg1)
  %7 = ptrtoint ptr %muxsg1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %muxsg1, align 1
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %high_speed = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp1.inv.i = icmp sgt i32 %5, 8
  %..i = select i1 %cmp1.inv.i, i32 8, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.inv.i = icmp sgt i32 %5, 2
  %retval.0.i = select i1 %cmp.inv.i, i32 %..i, i32 2
  %ai_interval = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %ai_interval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %ai_interval, align 4
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %10 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_begin_arg, align 4
  %mul = mul nuw nsw i32 %retval.0.i, 125000
  %div = udiv i32 %11, %mul
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ai_interval2 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %ai_interval2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %ai_interval2, align 4
  %scan_begin_arg3 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %13 = ptrtoint ptr %scan_begin_arg3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_begin_arg3, align 4
  %div4 = udiv i32 %14, 1000000
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %div.sink = phi i32 [ %div4, %if.else ], [ %div, %if.then ]
  %15 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.sink, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp102.not = icmp eq i32 %5, 0
  br i1 %cmp102.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %17 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.body:                                         ; preds = %create_adc_command.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %create_adc_command.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %18, i32 %i.0103
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %and = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp.i = icmp ult i32 %and, 8
  br i1 %cmp.i, label %for.body.if.end9.sink.split.i_crit_edge, label %if.else.i

for.body.if.end9.sink.split.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp2.i = icmp ult i32 %and, 16
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i.create_adc_command.exit_crit_edge

if.else.i.create_adc_command.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_adc_command.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %and, -8
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then4.i, %for.body.if.end9.sink.split.i_crit_edge
  %sub.sink.i = phi i32 [ %sub.i, %if.then4.i ], [ %and, %for.body.if.end9.sink.split.i_crit_edge ]
  %muxsg1.sink.i = phi ptr [ %muxsg1, %if.then4.i ], [ %muxsg0, %for.body.if.end9.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %muxsg1.sink.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.sink.i = load i8, ptr %muxsg1.sink.i, align 1
  %shl6.i = shl nuw nsw i32 1, %sub.sink.i
  %22 = trunc i32 %shl6.i to i8
  %conv8.i = or i8 %.sink.i, %22
  store i8 %conv8.i, ptr %muxsg1.sink.i, align 1
  br label %create_adc_command.exit

create_adc_command.exit:                          ; preds = %if.end9.sink.split.i, %if.else.i.create_adc_command.exit_crit_edge
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %create_adc_command.exit.for.end_crit_edge, label %create_adc_command.exit.for.body_crit_edge

create_adc_command.exit.for.body_crit_edge:       ; preds = %create_adc_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

create_adc_command.exit.for.end_crit_edge:        ; preds = %create_adc_command.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %create_adc_command.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %ai_interval6 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %ai_interval6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ai_interval6, align 4
  %conv = trunc i32 %24 to i8
  %dux_commands = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dux_commands, align 4
  %arrayidx7 = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %arrayidx7, align 1
  %conv8 = trunc i32 %5 to i8
  %28 = load ptr, ptr %dux_commands, align 4
  %arrayidx10 = getelementptr i8, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv8, ptr %arrayidx10, align 1
  %30 = load ptr, ptr %dux_commands, align 4
  %arrayidx12 = getelementptr i8, ptr %30, i32 3
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 18, ptr %arrayidx12, align 1
  %32 = load ptr, ptr %dux_commands, align 4
  %arrayidx14 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %arrayidx14, align 1
  %34 = load ptr, ptr %dux_commands, align 4
  %arrayidx16 = getelementptr i8, ptr %34, i32 5
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx16, align 1
  %36 = ptrtoint ptr %muxsg0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %muxsg0.0.muxsg0.0. = load i8, ptr %muxsg0, align 1
  %37 = load ptr, ptr %dux_commands, align 4
  %arrayidx18 = getelementptr i8, ptr %37, i32 6
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %muxsg0.0.muxsg0.0., ptr %arrayidx18, align 1
  %39 = ptrtoint ptr %muxsg1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %muxsg1.0.muxsg1.0. = load i8, ptr %muxsg1, align 1
  %40 = load ptr, ptr %dux_commands, align 4
  %arrayidx20 = getelementptr i8, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %muxsg1.0.muxsg1.0., ptr %arrayidx20, align 1
  %42 = load ptr, ptr %dux_commands, align 4
  %arrayidx22 = getelementptr i8, ptr %42, i32 8
  %43 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx22, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #10
  %46 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %nsent.i, align 4, !annotation !113
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %45, i32 0, i32 16
  %47 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dux_commands.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 9, ptr %48, align 1
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %51, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %52 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %52, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp24 = icmp slt i32 %call3.i, 0
  br i1 %cmp24, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %15, align 4
  %ai_counter = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 13
  %55 = ptrtoint ptr %ai_counter to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ai_counter, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %56 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp30 = icmp eq i32 %57, 2
  br i1 %cmp30, label %if.then32, label %if.end28.if.end48_crit_edge

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then32:                                        ; preds = %if.end28
  %58 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load33 = load i8, ptr %high_speed, align 4
  %bf.set = or i8 %bf.load33, 64
  store i8 %bf.set, ptr %high_speed, align 4
  %ai_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %ai_urbs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ai_urbs, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 4
  %call.i96 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp18.i = icmp sgt i32 %62, 0
  br i1 %cmp18.i, label %if.then32.for.body.i_crit_edge, label %if.then32.if.end48_crit_edge

if.then32.if.end48_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then32.for.body.i_crit_edge:                   ; preds = %if.then32
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %62
  br i1 %exitcond.not.i, label %for.cond.i.if.end48_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end48_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then32.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then32.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %60, i32 %i.019.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 25
  %65 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %interval.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 27
  %66 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 8
  %67 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i96, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 12
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 13
  %69 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = call i32 @usb_submit_urb(ptr noundef %64, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbduxsigma_submit_urbs.exit

usbduxsigma_submit_urbs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp35 = icmp slt i32 %call2.i, 0
  br i1 %cmp35, label %if.then37, label %usbduxsigma_submit_urbs.exit.if.end48_crit_edge

usbduxsigma_submit_urbs.exit.if.end48_crit_edge:  ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then37:                                        ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load39 = load i8, ptr %high_speed, align 4
  %bf.clear40 = and i8 %bf.load39, -65
  store i8 %bf.clear40, ptr %high_speed, align 4
  br label %cleanup

if.end48:                                         ; preds = %usbduxsigma_submit_urbs.exit.if.end48_crit_edge, %for.cond.i.if.end48_crit_edge, %if.then32.if.end48_crit_edge, %if.end28.if.end48_crit_edge
  %usbduxsigma_ai_inttrig.sink = phi ptr [ null, %if.then32.if.end48_crit_edge ], [ null, %usbduxsigma_submit_urbs.exit.if.end48_crit_edge ], [ @usbduxsigma_ai_inttrig, %if.end28.if.end48_crit_edge ], [ null, %for.cond.i.if.end48_crit_edge ]
  %71 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %async, align 4
  %inttrig47 = getelementptr inbounds %struct.comedi_async, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %inttrig47 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %usbduxsigma_ai_inttrig.sink, ptr %inttrig47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then37, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.then37 ], [ 0, %if.end48 ], [ %call3.i, %for.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %muxsg1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %muxsg0)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ai_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.usbduxsigma_ai_stop.exit_crit_edge, label %land.lhs.true.i

entry.usbduxsigma_ai_stop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %ai_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ai_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usbduxsigma_ai_stop.exit_crit_edge, label %if.then.i

land.lhs.true.i.usbduxsigma_ai_stop.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i = icmp sgt i32 %9, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbduxsigma_ai_stop.exit_crit_edge

if.then.i.usbduxsigma_ai_stop.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.04.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ai_stop.exit

usbduxsigma_ai_stop.exit:                         ; preds = %for.body.i.i.usbduxsigma_ai_stop.exit_crit_edge, %if.then.i.usbduxsigma_ai_stop.exit_crit_edge, %land.lhs.true.i.usbduxsigma_ai_stop.exit_crit_edge, %entry.usbduxsigma_ai_stop.exit_crit_edge
  %ai_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %ai_cmd_running.i, align 4
  tail call void @mutex_unlock(ptr noundef %mut) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ao_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp37.not = icmp eq i32 %7, 0
  br i1 %cmp37.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dux_commands = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 16
  %conv5 = trunc i32 %3 to i8
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %8 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i32, ptr %data, i32 %i.038
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  %conv = trunc i32 %12 to i8
  %13 = load ptr, ptr %dux_commands, align 4
  %arrayidx4 = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx4, align 1
  %15 = load ptr, ptr %dux_commands, align 4
  %arrayidx7 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %arrayidx7, align 1
  %call.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #10
  %19 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %nsent.i, align 4, !annotation !113
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %18, i32 0, i32 16
  %20 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dux_commands.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %25 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %25, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8 = icmp slt i32 %call3.i, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2, align 4
  %28 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readback, align 4
  %arrayidx14 = getelementptr i32, ptr %29, i32 %and
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx14, align 4
  %inc = add nuw i32 %i.038, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mut) #10
  %33 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call3.i, %if.then10 ], [ %34, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %call = tail call i32 @comedi_readback_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #10
  tail call void @mutex_unlock(ptr noundef %mut) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %and.i77 = and i32 %5, 16
  store i32 %and.i77, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %cmp.i78 = icmp ne i32 %and.i77, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i77, i32 %5)
  %cmp1.not.i79 = icmp eq i32 %and.i77, %5
  %or.cond.i80 = and i1 %cmp.i78, %cmp1.not.i79
  %6 = select i1 %or.cond.i, i1 %or.cond.i80, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i82 = and i32 %8, 2
  store i32 %and.i82, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %cmp.i83 = icmp ne i32 %and.i82, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i82, i32 %8)
  %cmp1.not.i84 = icmp eq i32 %and.i82, %8
  %or.cond.i85 = and i1 %cmp.i83, %cmp1.not.i84
  %9 = select i1 %6, i1 %or.cond.i85, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i87 = and i32 %11, 32
  store i32 %and.i87, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %cmp.i88 = icmp ne i32 %and.i87, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i87, i32 %11)
  %cmp1.not.i89 = icmp eq i32 %and.i87, %11
  %or.cond.i90 = and i1 %cmp.i88, %cmp1.not.i89
  %12 = select i1 %9, i1 %or.cond.i90, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i92 = and i32 %14, 33
  store i32 %and.i92, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %cmp.i93 = icmp ne i32 %and.i92, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i92, i32 %14)
  %cmp1.not.i94 = icmp eq i32 %and.i92, %14
  %or.cond.i95 = and i1 %cmp.i93, %cmp1.not.i94
  %15 = select i1 %12, i1 %or.cond.i95, i1 false
  br i1 %15, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #10, !range !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %14) #10, !range !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i97 = icmp ult i32 %17, 2
  %18 = select i1 %cmp.not.i, i1 %cmp.not.i97, i1 false
  br i1 %18, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i99 = icmp eq i32 %20, 0
  br i1 %cmp.not.i99, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i100 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %23)
  %cmp.i101 = icmp ult i32 %23, 1000000
  br i1 %cmp.i101, label %if.then.i102, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_min.exit

if.then.i102:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1000000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i102, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i103 = phi i32 [ -22, %if.then.i102 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or21 = or i32 %retval.0.i103, %retval.0.i100
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  %27 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i104 = icmp eq i32 %28, %26
  br i1 %cmp.not.i104, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge, label %if.then.i105

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %comedi_check_trigger_arg_is.exit107

if.then.i105:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit107

comedi_check_trigger_arg_is.exit107:              ; preds = %if.then.i105, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge
  %retval.0.i106 = phi i32 [ -22, %if.then.i105 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit107_crit_edge ]
  %or23 = or i32 %or21, %retval.0.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i108 = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %comedi_check_trigger_arg_is.exit107
  br i1 %cmp.i108, label %if.then25.if.end31.sink.split_crit_edge, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then25.if.end31.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit107
  br i1 %cmp.i108, label %if.else.if.end31_crit_edge, label %if.else.if.end31.sink.split_crit_edge

if.else.if.end31.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.sink.split

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31.sink.split:                              ; preds = %if.else.if.end31.sink.split_crit_edge, %if.then25.if.end31.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then25.if.end31.sink.split_crit_edge ], [ 0, %if.else.if.end31.sink.split_crit_edge ]
  %32 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.if.end31_crit_edge, %if.then25.if.end31_crit_edge
  %call26.pn = phi i32 [ 0, %if.then25.if.end31_crit_edge ], [ 0, %if.else.if.end31_crit_edge ], [ -22, %if.end31.sink.split ]
  %err.0 = or i32 %or23, %call26.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool32.not = icmp eq i32 %err.0, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %33 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_begin_arg, align 4
  %rem = urem i32 %34, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not.i116 = icmp eq i32 %rem, 0
  br i1 %cmp.not.i116, label %if.end34.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit119

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

comedi_check_trigger_arg_is.exit119:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %34, %rem
  %35 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %scan_begin_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit119, %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end31.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit119 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %4 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_arg, align 4
  %div = udiv i32 %5, 1000000
  %ao_timer = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %ao_timer to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %ao_timer, align 4
  %ao_counter = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %ao_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %ao_counter, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %ao_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %ao_cmd_running, align 4
  %ao_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ao_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ao_urbs, align 4
  %n_ao_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %n_ao_urbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_ao_urbs, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp18.i = icmp sgt i32 %14, 0
  br i1 %cmp18.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.if.end13_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.019.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 12
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 13
  %20 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbduxsigma_submit_urbs.exit

usbduxsigma_submit_urbs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3 = icmp slt i32 %call2.i, 0
  br i1 %cmp3, label %if.then4, label %usbduxsigma_submit_urbs.exit.if.end13_crit_edge

usbduxsigma_submit_urbs.exit.if.end13_crit_edge:  ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load6 = load i8, ptr %ao_cmd_running, align 4
  %bf.clear7 = and i8 %bf.load6, -33
  store i8 %bf.clear7, ptr %ao_cmd_running, align 4
  br label %cleanup

if.end13:                                         ; preds = %usbduxsigma_submit_urbs.exit.if.end13_crit_edge, %for.cond.i.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %usbduxsigma_ao_inttrig.sink = phi ptr [ null, %if.then.if.end13_crit_edge ], [ null, %usbduxsigma_submit_urbs.exit.if.end13_crit_edge ], [ @usbduxsigma_ao_inttrig, %entry.if.end13_crit_edge ], [ null, %for.cond.i.if.end13_crit_edge ]
  %22 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %async, align 4
  %inttrig12 = getelementptr inbounds %struct.comedi_async, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %inttrig12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %usbduxsigma_ao_inttrig.sink, ptr %inttrig12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then4
  %retval.0 = phi i32 [ %call2.i, %if.then4 ], [ 0, %if.end13 ]
  tail call void @mutex_unlock(ptr noundef %mut) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ao_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.usbduxsigma_ao_stop.exit_crit_edge, label %land.lhs.true.i

entry.usbduxsigma_ao_stop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ao_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usbduxsigma_ao_stop.exit_crit_edge, label %if.then.i

land.lhs.true.i.usbduxsigma_ao_stop.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %n_ao_urbs.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i = icmp sgt i32 %9, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbduxsigma_ao_stop.exit_crit_edge

if.then.i.usbduxsigma_ao_stop.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.04.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbduxsigma_ao_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.usbduxsigma_ao_stop.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_ao_stop.exit

usbduxsigma_ao_stop.exit:                         ; preds = %for.body.i.i.usbduxsigma_ao_stop.exit_crit_edge, %if.then.i.usbduxsigma_ao_stop.exit_crit_edge, %land.lhs.true.i.usbduxsigma_ao_stop.exit_crit_edge, %entry.usbduxsigma_ao_stop.exit_crit_edge
  %ao_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %ao_cmd_running.i, align 4
  tail call void @mutex_unlock(ptr noundef %mut) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_dio_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #10
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %conv = trunc i32 %3 to i8
  %dux_commands = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 16
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
  %conv2 = trunc i32 %8 to i8
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx4 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2, ptr %arrayidx4, align 1
  %11 = load i32, ptr %io_bits, align 4
  %shr = lshr i32 %11, 8
  %conv7 = trunc i32 %shr to i8
  %12 = load ptr, ptr %dux_commands, align 4
  %arrayidx9 = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %arrayidx9, align 1
  %14 = load i32, ptr %state, align 4
  %shr11 = lshr i32 %14, 8
  %conv13 = trunc i32 %shr11 to i8
  %15 = load ptr, ptr %dux_commands, align 4
  %arrayidx15 = getelementptr i8, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %arrayidx15, align 1
  %17 = load i32, ptr %io_bits, align 4
  %shr17 = lshr i32 %17, 16
  %conv19 = trunc i32 %shr17 to i8
  %18 = load ptr, ptr %dux_commands, align 4
  %arrayidx21 = getelementptr i8, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv19, ptr %arrayidx21, align 1
  %20 = load i32, ptr %state, align 4
  %shr23 = lshr i32 %20, 16
  %conv25 = trunc i32 %shr23 to i8
  %21 = load ptr, ptr %dux_commands, align 4
  %arrayidx27 = getelementptr i8, ptr %21, i32 6
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25, ptr %arrayidx27, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #10
  %25 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %nsent.i, align 4, !annotation !113
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %24, i32 0, i32 16
  %26 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dux_commands.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %27, align 1
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %30, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %31 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %31, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %call.i72 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #10
  %34 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %nrec.i, align 4, !annotation !113
  %insn_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %33, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_receive_cmd.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.019.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %call.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i72, align 8
  %shl.i.i74 = shl i32 %36, 8
  %or2.i = or i32 %shl.i.i74, -1073479552
  %37 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %insn_buf.i, align 4
  %call3.i75 = call i32 @usb_bulk_msg(ptr noundef %call.i72, i32 noundef %or2.i, ptr noundef %38, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i75)
  %cmp4.i = icmp slt i32 %call3.i75, 0
  br i1 %cmp4.i, label %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, label %if.end.i

for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_receive_cmd.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %39 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %insn_buf.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp6.i = icmp eq i8 %42, 3
  br i1 %cmp6.i, label %if.end34, label %for.cond.i

usbduxsigma_receive_cmd.exit.thread:              ; preds = %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge ], [ %call3.i75, %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  br label %done

if.end34:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  %insn_buf = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %insn_buf, align 4
  %arrayidx35 = getelementptr i8, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %46 to i32
  %arrayidx38 = getelementptr i8, ptr %44, i32 2
  %47 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %48 to i32
  %shl = shl nuw nsw i32 %conv39, 8
  %or = or i32 %shl, %conv36
  %arrayidx41 = getelementptr i8, ptr %44, i32 3
  %49 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %50 to i32
  %shl43 = shl nuw nsw i32 %conv42, 16
  %or44 = or i32 %or, %shl43
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or44, ptr %state, align 4
  %arrayidx47 = getelementptr i32, ptr %data, i32 1
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or44, ptr %arrayidx47, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %53 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n, align 4
  br label %done

done:                                             ; preds = %if.end34, %usbduxsigma_receive_cmd.exit.thread, %entry.done_crit_edge
  %ret.0 = phi i32 [ %call3.i, %entry.done_crit_edge ], [ %54, %if.end34 ], [ %retval.0.i.ph, %usbduxsigma_receive_cmd.exit.thread ]
  call void @mutex_unlock(ptr noundef %mut) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_pwm_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwm_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.end.usbduxsigma_pwm_pattern.exit_crit_edge

if.end.usbduxsigma_pwm_pattern.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_pwm_pattern.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %8 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanspec, align 4
  %and = and i32 %9, 65535
  %pwm_urb.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %5, i32 0, i32 4
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
  br i1 %exitcond.not.i, label %for.body.i.usbduxsigma_pwm_pattern.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.usbduxsigma_pwm_pattern.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_pwm_pattern.exit

usbduxsigma_pwm_pattern.exit:                     ; preds = %for.body.i.usbduxsigma_pwm_pattern.exit_crit_edge, %if.end.usbduxsigma_pwm_pattern.exit_crit_edge
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %usbduxsigma_pwm_pattern.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %usbduxsigma_pwm_pattern.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_pwm_config(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  %nsent.i.i31 = alloca i32, align 4
  %nsent.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %pwm_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %pwm_cmd_running.i, align 4
  %8 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %pwm_delay.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pwm_delay.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pwm_delay.i, align 4
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dux_commands.i, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx.i, align 1
  %call.i.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i.i) #10
  %16 = ptrtoint ptr %nsent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %nsent.i.i, align 4, !annotation !113
  %dux_commands.i.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %15, i32 0, i32 16
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
  %call3.i.i = call i32 @usb_bulk_msg(ptr noundef %call.i.i, i32 noundef %or.i.i, ptr noundef %22, i32 noundef 26, ptr noundef nonnull %nsent.i.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %pwm_urb.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwm_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer_buffer.i, align 4
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pwm_buf_sz.i, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %30 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load4.i = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.set.i = or i8 %bf.load4.i, 16
  store i8 %bf.set.i, ptr %pwm_cmd_running.i, align 4
  %call.i1.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %pwm_urb.i.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %pwm_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pwm_urb.i.i, align 4
  %35 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i1.i, align 8
  %shl.i.i3.i = shl i32 %36, 8
  %or.i4.i = or i32 %shl.i.i3.i, -1073610752
  %pwm_buf_sz.i.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %32, i32 0, i32 7
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
  store ptr @usbduxsigma_pwm_urb_complete, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %context4.i.i.i, align 4
  %call2.i.i = call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp7.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load10.i = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.clear11.i = and i8 %bf.load10.i, -17
  store i8 %bf.clear11.i, ptr %pwm_cmd_running.i, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %pwm_cmd_running.i33 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %pwm_cmd_running.i33 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i34 = load i8, ptr %pwm_cmd_running.i33, align 4
  %46 = and i8 %bf.load.i34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i, label %sw.bb2.usbduxsigma_pwm_cancel.exit_crit_edge, label %if.then.i.i

sw.bb2.usbduxsigma_pwm_cancel.exit_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_pwm_cancel.exit

if.then.i.i:                                      ; preds = %sw.bb2
  %pwm_urb.i.i35 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %pwm_urb.i.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pwm_urb.i.i35, align 4
  %tobool1.not.i.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.usbduxsigma_pwm_cancel.exit_crit_edge, label %if.then2.i.i

if.then.i.i.usbduxsigma_pwm_cancel.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_pwm_cancel.exit

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %48) #10
  br label %usbduxsigma_pwm_cancel.exit

usbduxsigma_pwm_cancel.exit:                      ; preds = %if.then2.i.i, %if.then.i.i.usbduxsigma_pwm_cancel.exit_crit_edge, %sw.bb2.usbduxsigma_pwm_cancel.exit_crit_edge
  %49 = ptrtoint ptr %pwm_cmd_running.i33 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i = load i8, ptr %pwm_cmd_running.i33, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  store i8 %bf.clear.i.i, ptr %pwm_cmd_running.i33, align 4
  %call.i.i36 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %50 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i.i31) #10
  %52 = ptrtoint ptr %nsent.i.i31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %nsent.i.i31, align 4, !annotation !113
  %dux_commands.i.i37 = getelementptr inbounds %struct.usbduxsigma_private, ptr %51, i32 0, i32 16
  %53 = ptrtoint ptr %dux_commands.i.i37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dux_commands.i.i37, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 8, ptr %54, align 1
  %56 = ptrtoint ptr %call.i.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i.i36, align 8
  %shl.i.i.i38 = shl i32 %57, 8
  %or.i.i39 = or i32 %shl.i.i.i38, -1073709056
  %58 = load ptr, ptr %dux_commands.i.i37, align 4
  %call3.i.i40 = call i32 @usb_bulk_msg(ptr noundef %call.i.i36, i32 noundef %or.i.i39, ptr noundef %58, i32 noundef 26, ptr noundef nonnull %nsent.i.i31, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i.i31) #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pwm_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %59 = ptrtoint ptr %pwm_cmd_running to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %pwm_cmd_running, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %60 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %bf.cast, ptr %arrayidx5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %arrayidx7 = getelementptr i32, ptr %data, i32 1
  %61 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx7, align 4
  %63 = add i32 %62, -24389580
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21056247, i32 %63)
  %64 = icmp ult i32 %63, -21056247
  br i1 %64, label %sw.bb6.cleanup_crit_edge, label %if.end3.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 %62, 93090
  %65 = trunc i32 %div.i to i8
  %conv.i = add i8 %65, -6
  %pwm_delay.i42 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %pwm_delay.i42 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %pwm_delay.i42, align 4
  %pwm_period.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %62, ptr %pwm_period.i, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pwm_period = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %pwm_period to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pwm_period, align 4
  %arrayidx10 = getelementptr i32, ptr %data, i32 1
  %70 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx10, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %arrayidx12 = getelementptr i32, ptr %data, i32 1
  %71 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx12, align 4
  %pwm_buf_sz.i45 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %pwm_buf_sz.i45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pwm_buf_sz.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1.i = icmp sgt i32 %74, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb11
  %arrayidx13 = getelementptr i32, ptr %data, i32 2
  %75 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp14.not = icmp eq i32 %76, 0
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %77 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chanspec, align 4
  %and = and i32 %78, 65535
  %pwm_urb.i46 = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %pwm_urb.i46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pwm_urb.i46, align 4
  %transfer_buffer.i47 = getelementptr inbounds %struct.urb, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %transfer_buffer.i47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %transfer_buffer.i47, align 4
  %shl1.i = shl i32 16, %and
  %shl.i = shl nuw i32 1, %and
  %83 = trunc i32 %shl.i to i8
  %84 = xor i8 %83, -1
  %85 = trunc i32 %shl1.i to i8
  %86 = xor i8 %85, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %buf.02.i = phi ptr [ %82, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buf.02.i, align 1
  %conv6.i = and i8 %88, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i, i32 %72)
  %cmp7.i49 = icmp ult i32 %i.03.i, %72
  %conv11.i = or i8 %88, %83
  %c.0.i = select i1 %cmp7.i49, i8 %conv11.i, i8 %conv6.i
  %conv21.i = or i8 %c.0.i, %85
  %conv17.i = and i8 %c.0.i, %86
  %c.1.i = select i1 %cmp14.not, i8 %conv17.i, i8 %conv21.i
  %incdec.ptr.i = getelementptr i8, ptr %buf.02.i, i32 1
  %89 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %c.1.i, ptr %buf.02.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %74
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb9, %if.end3.i, %sw.bb6.cleanup_crit_edge, %sw.bb4, %usbduxsigma_pwm_cancel.exit, %if.then8.i, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb4 ], [ %call3.i.i40, %usbduxsigma_pwm_cancel.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i.i, %if.then8.i ], [ 0, %if.end.cleanup_crit_edge ], [ %call3.i.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end2.i.cleanup_crit_edge ], [ 0, %if.end3.i ], [ -11, %sw.bb6.cleanup_crit_edge ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbduxsigma_getstatusinfo(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %dux_commands = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 18, ptr %arrayidx, align 1
  %7 = load ptr, ptr %dux_commands, align 4
  %arrayidx7 = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx7, align 1
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx9 = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9, align 1
  %11 = load ptr, ptr %dux_commands, align 4
  %arrayidx11 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx11, align 1
  %13 = load ptr, ptr %dux_commands, align 4
  %arrayidx13 = getelementptr i8, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx13, align 1
  %15 = load ptr, ptr %dux_commands, align 4
  %arrayidx15 = getelementptr i8, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx15, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #10
  %19 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %nsent.i, align 4, !annotation !113
  %dux_commands.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %18, i32 0, i32 16
  %20 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dux_commands.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %21, align 1
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %25 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %25, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i1 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #10
  %28 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %nrec.i, align 4, !annotation !113
  %insn_buf.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %27, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_receive_cmd.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.019.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %call.i1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i1, align 8
  %shl.i.i3 = shl i32 %30, 8
  %or2.i = or i32 %shl.i.i3, -1073479552
  %31 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %insn_buf.i, align 4
  %call3.i4 = call i32 @usb_bulk_msg(ptr noundef %call.i1, i32 noundef %or2.i, ptr noundef %32, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4)
  %cmp4.i = icmp slt i32 %call3.i4, 0
  br i1 %cmp4.i, label %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, label %if.end.i

for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbduxsigma_receive_cmd.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %33 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %insn_buf.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp6.i = icmp eq i8 %36, 4
  br i1 %cmp6.i, label %if.end19, label %for.cond.i

usbduxsigma_receive_cmd.exit.thread:              ; preds = %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge, %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.usbduxsigma_receive_cmd.exit.thread_crit_edge ], [ %call3.i4, %for.body.i.usbduxsigma_receive_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #10
  %insn_buf = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %insn_buf, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 1
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %add.ptr, align 1
  %and = and i32 %40, 16777215
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %42, %and
  %shr.i = lshr i32 %42, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %usbduxsigma_receive_cmd.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %xor2.i, %if.end19 ], [ %call3.i, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %usbduxsigma_receive_cmd.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsigma_ai_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async1, align 4
  %ai_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %11, label %do.end12 [
    i32 0, label %sw.bb
    i32 -84, label %do.body
    i32 -104, label %if.end.sw.bb9_crit_edge
    i32 -2, label %if.end.sw.bb9_crit_edge43
    i32 -108, label %if.end.sw.bb9_crit_edge44
    i32 -103, label %if.end.sw.bb9_crit_edge45
  ]

if.end.sw.bb9_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge44:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge43:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %in_buf = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_buf, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %17 = call ptr @memcpy(ptr %14, ptr %16, i32 68)
  tail call fastcc void @usbduxsigma_ai_handle_urb(ptr noundef %1, ptr noundef %5, ptr noundef %urb)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbduxsigma_ai_urb_complete.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbduxsigma_ai_urb_complete, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !115

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbduxsigma_ai_urb_complete.__UNIQUE_ID_ddebug239, ptr noundef %19, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call fastcc void @usbduxsigma_ai_handle_urb(ptr noundef %1, ptr noundef %5, ptr noundef %urb)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge43, %if.end.sw.bb9_crit_edge44, %if.end.sw.bb9_crit_edge45
  %events = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %20 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %events, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %events, align 4
  br label %sw.epilog

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev13 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef %11) #15
  %events15 = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %24 = ptrtoint ptr %events15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events15, align 4
  %or16 = or i32 %25, 16
  store i32 %or16, ptr %events15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %sw.bb9, %do.end, %sw.bb
  %events17 = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %26 = ptrtoint ptr %events17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %events17, align 4
  %and = and i32 %27, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %sw.epilog.if.end20_crit_edge, label %if.then19

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private, align 4
  %ai_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %ai_cmd_running.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %sw.epilog.if.end20_crit_edge
  tail call void @comedi_event(ptr noundef %1, ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsigma_ao_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async1, align 4
  %ao_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %11, label %do.end [
    i32 0, label %sw.bb
    i32 -104, label %if.end.sw.bb2_crit_edge
    i32 -2, label %if.end.sw.bb2_crit_edge27
    i32 -108, label %if.end.sw.bb2_crit_edge28
    i32 -103, label %if.end.sw.bb2_crit_edge29
  ]

if.end.sw.bb2_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb:                                            ; preds = %if.end
  %ao_counter.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %ao_counter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ao_counter.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %ao_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end22.i_crit_edge

sw.bb.if.end22.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then.i:                                        ; preds = %sw.bb
  %ao_timer.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %ao_timer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ao_timer.i, align 4
  %17 = ptrtoint ptr %ao_counter.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ao_counter.i, align 4
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 10
  %18 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp5.i = icmp eq i32 %19, 32
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 11
  %20 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 11
  %22 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp6.not.i = icmp ult i32 %21, %23
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
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
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 13
  %28 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len.i, align 4
  %conv.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %27, align 1
  %31 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp998.not.i = icmp eq i32 %31, 0
  br i1 %cmp998.not.i, label %if.end.i.if.end22.i_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %27, i32 1
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 12
  %readback.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0100.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %datap.099.i = phi ptr [ %incdec.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr18.i, %for.inc.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %33, i32 %i.0100.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %val.i, align 2, !annotation !113
  %call.i = call i32 @comedi_buf_read_samples(ptr noundef %5, ptr noundef nonnull %val.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.24) #15
  %events12.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %39 = ptrtoint ptr %events12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %events12.i, align 4
  %or13.i = or i32 %40, 32
  store i32 %or13.i, ptr %events12.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  br label %sw.epilog

for.inc.i:                                        ; preds = %for.body.i
  %and.i = and i32 %35, 65535
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val.i, align 2
  %conv15.i = trunc i16 %42 to i8
  %incdec.ptr16.i = getelementptr i8, ptr %datap.099.i, i32 1
  %43 = ptrtoint ptr %datap.099.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv15.i, ptr %datap.099.i, align 1
  %conv17.i = trunc i32 %35 to i8
  %incdec.ptr18.i = getelementptr i8, ptr %datap.099.i, i32 2
  %44 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv17.i, ptr %incdec.ptr16.i, align 1
  %45 = load i16, ptr %val.i, align 2
  %conv19.i = zext i16 %45 to i32
  %46 = ptrtoint ptr %readback.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %readback.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %47, i32 %and.i
  %48 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv19.i, ptr %arrayidx20.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %inc.i = add nuw i32 %i.0100.i, 1
  %49 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chanlist_len.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %50
  br i1 %cmp9.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end22.i_crit_edge

for.inc.i.if.end22.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end22.i:                                       ; preds = %for.inc.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge, %sw.bb.if.end22.i_crit_edge
  %events23.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %51 = ptrtoint ptr %events23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %events23.i, align 4
  %and24.i = and i32 %52, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end22.i.sw.epilog_crit_edge

if.end22.i.sw.epilog_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then26.i:                                      ; preds = %if.end22.i
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %53 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 24, ptr %transfer_buffer_length.i, align 4
  %call27.i = call ptr @comedi_to_usb_dev(ptr noundef %1) #10
  %dev28.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %54 = ptrtoint ptr %dev28.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call27.i, ptr %dev28.i, align 4
  %55 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %status, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %56 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %interval.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %57 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %number_of_packets.i, align 4
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %58 = ptrtoint ptr %iso_frame_desc.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %iso_frame_desc.i, align 4
  %length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 24, ptr %length.i, align 4
  %status34.i = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %60 = ptrtoint ptr %status34.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %status34.i, align 4
  %call35.i = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %do.end41.i, label %if.then26.i.sw.epilog_crit_edge

if.then26.i.sw.epilog_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end41.i:                                       ; preds = %if.then26.i
  %class_dev42.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %class_dev42.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %class_dev42.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.18, i32 noundef %call35.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call35.i)
  %cmp43.i = icmp eq i32 %call35.i, -45
  br i1 %cmp43.i, label %do.end48.i, label %do.end41.i.if.end50.i_crit_edge

do.end41.i.if.end50.i_crit_edge:                  ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

do.end48.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %class_dev42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %class_dev42.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.21) #15
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end48.i, %do.end41.i.if.end50.i_crit_edge
  %65 = ptrtoint ptr %events23.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %events23.i, align 4
  %or52.i = or i32 %66, 16
  store i32 %or52.i, ptr %events23.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge27, %if.end.sw.bb2_crit_edge28, %if.end.sw.bb2_crit_edge29
  %events = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %67 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %events, align 4
  %or = or i32 %68, 16
  store i32 %or, ptr %events, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.17, i32 noundef %11) #15
  %events4 = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %71 = ptrtoint ptr %events4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %events4, align 4
  %or5 = or i32 %72, 16
  store i32 %or5, ptr %events4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %if.end50.i, %if.then26.i.sw.epilog_crit_edge, %if.end22.i.sw.epilog_crit_edge, %cleanup.thread.i, %if.then7.i
  %events6 = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %73 = ptrtoint ptr %events6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %events6, align 4
  %and = and i32 %74, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %sw.epilog.if.end9_crit_edge, label %if.then8

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %private, align 4
  %ao_cmd_running.i = getelementptr inbounds %struct.usbduxsigma_private, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %ao_cmd_running.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.epilog.if.end9_crit_edge
  call void @comedi_event(ptr noundef %1, ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbduxsigma_ai_handle_urb(ptr noundef %dev, ptr noundef %s, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !113
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %8)
  %cmp3.not = icmp eq i32 %8, -18
  br i1 %cmp3.not, label %land.lhs.true.if.end17_crit_edge, label %if.then

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %ai_counter = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %ai_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ai_counter, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %ai_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then6, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then6:                                         ; preds = %if.then
  %ai_timer = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %ai_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ai_timer, align 4
  %13 = ptrtoint ptr %ai_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ai_counter, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %in_buf = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 8
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then6
  %i.0 = phi i32 [ 0, %if.then6 ], [ %add, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %15)
  %cmp8 = icmp ult i32 %i.0, %15
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_buf, align 4
  %add = add nuw i32 %i.0, 1
  %arrayidx = getelementptr i32, ptr %17, i32 %add
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and = and i32 %19, 16777215
  %20 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %21, %and
  %shr.i = lshr i32 %21, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %xor2.i, ptr %val, align 4
  %call9 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val, i32 noundef 1) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %23 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp11 = icmp eq i32 %24, 32
  br i1 %cmp11, label %land.lhs.true12, label %for.end.if.end17_crit_edge

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true12:                                  ; preds = %for.end
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %27 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp13.not = icmp ult i32 %26, %28
  br i1 %cmp13.not, label %land.lhs.true12.if.end17_crit_edge, label %if.then14

land.lhs.true12.if.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  %events = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %29 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %events, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true12.if.end17_crit_edge, %for.end.if.end17_crit_edge, %if.then.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %events18 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %events18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %events18, align 4
  %and19 = and i32 %32, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %call22 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  %dev23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %33 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call22, ptr %dev23, align 4
  %call24 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then21
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18, i32 noundef %call24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call24)
  %cmp27 = icmp eq i32 %call24, -45
  br i1 %cmp27, label %do.end31, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.21) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %do.end.if.end33_crit_edge
  %38 = ptrtoint ptr %events18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %events18, align 4
  %or35 = or i32 %39, 16
  store i32 %or35, ptr %events18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_event(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @usbduxsigma_ai_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ai_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  %bf.set = or i8 %bf.load, 64
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set, ptr %ai_cmd_running, align 4
  %ai_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ai_urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ai_urbs, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18.i = icmp sgt i32 %12, 0
  br i1 %cmp18.i, label %if.then2.for.body.i_crit_edge, label %if.then2.if.end13_crit_edge

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.cond.i.if.end13_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.019.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %interval.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %16 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 12
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  %19 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbduxsigma_submit_urbs.exit

usbduxsigma_submit_urbs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp6 = icmp slt i32 %call2.i, 0
  br i1 %cmp6, label %if.then7, label %usbduxsigma_submit_urbs.exit.if.end13_crit_edge

usbduxsigma_submit_urbs.exit.if.end13_crit_edge:  ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load9 = load i8, ptr %ai_cmd_running, align 4
  %bf.clear10 = and i8 %bf.load9, -65
  store i8 %bf.clear10, ptr %ai_cmd_running, align 4
  br label %cleanup.sink.split

if.end13:                                         ; preds = %usbduxsigma_submit_urbs.exit.if.end13_crit_edge, %for.cond.i.if.end13_crit_edge, %if.then2.if.end13_crit_edge
  %21 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.then7, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call2.i, %if.then7 ], [ 1, %if.end13 ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_readback_insn_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_ao_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #10
  %ao_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  %bf.set = or i8 %bf.load, 32
  %8 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set, ptr %ao_cmd_running, align 4
  %ao_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ao_urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ao_urbs, align 4
  %n_ao_urbs = getelementptr inbounds %struct.usbduxsigma_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %n_ao_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ao_urbs, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18.i = icmp sgt i32 %12, 0
  br i1 %cmp18.i, label %if.then2.for.body.i_crit_edge, label %if.then2.if.end13_crit_edge

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.cond.i.if.end13_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end13_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.019.i
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
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbduxsigma_submit_urbs.exit

usbduxsigma_submit_urbs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp6 = icmp slt i32 %call2.i, 0
  br i1 %cmp6, label %if.then7, label %usbduxsigma_submit_urbs.exit.if.end13_crit_edge

usbduxsigma_submit_urbs.exit.if.end13_crit_edge:  ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %usbduxsigma_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load9 = load i8, ptr %ao_cmd_running, align 4
  %bf.clear10 = and i8 %bf.load9, -33
  store i8 %bf.clear10, ptr %ao_cmd_running, align 4
  br label %cleanup.sink.split

if.end13:                                         ; preds = %usbduxsigma_submit_urbs.exit.if.end13_crit_edge, %for.cond.i.if.end13_crit_edge, %if.then2.if.end13_crit_edge
  %20 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.then7, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call2.i, %if.then7 ], [ 1, %if.end13 ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mut) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsigma_pwm_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.epilog
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge62
    i32 -108, label %entry.sw.bb_crit_edge63
    i32 -103, label %entry.sw.bb_crit_edge64
  ]

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge62:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge62, %entry.sw.bb_crit_edge63, %entry.sw.bb_crit_edge64
  %pwm_cmd_running = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_cmd_running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %pwm_cmd_running, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  %pwm_cmd_running1 = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %pwm_cmd_running1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load2 = load i8, ptr %pwm_cmd_running1, align 4
  %10 = and i8 %bf.load2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %sw.default.cleanup_crit_edge, label %do.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef %5) #15
  br label %cleanup.sink.split.sink.split

sw.epilog:                                        ; preds = %entry
  %pwm_cmd_running10 = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %pwm_cmd_running10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load11 = load i8, ptr %pwm_cmd_running10, align 4
  %14 = and i8 %bf.load11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %sw.epilog.cleanup_crit_edge, label %if.end17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  %pwm_buf_sz = getelementptr inbounds %struct.usbduxsigma_private, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %pwm_buf_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwm_buf_sz, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %transfer_buffer_length, align 4
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %1) #10
  %dev18 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %dev18, align 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status, align 4
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end17
  %class_dev25 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %call20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call20)
  %cmp26 = icmp eq i32 %call20, -45
  br i1 %cmp26, label %do.end30, label %do.end24.cleanup.sink.split.sink.split_crit_edge

do.end24.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

do.end30:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %class_dev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.21) #15
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.end30, %do.end24.cleanup.sink.split.sink.split_crit_edge, %do.end
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  %pwm_cmd_running.i59 = getelementptr inbounds %struct.usbduxsigma_private, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %pwm_cmd_running.i59 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i56 = load i8, ptr %pwm_cmd_running.i59, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %sw.bb.cleanup.sink.split_crit_edge
  %bf.load.i60.sink = phi i8 [ %bf.load, %sw.bb.cleanup.sink.split_crit_edge ], [ %bf.load.i56, %cleanup.sink.split.sink.split ]
  %pwm_cmd_running.i59.sink = phi ptr [ %pwm_cmd_running, %sw.bb.cleanup.sink.split_crit_edge ], [ %pwm_cmd_running.i59, %cleanup.sink.split.sink.split ]
  %bf.clear.i61 = and i8 %bf.load.i60.sink, -17
  %27 = ptrtoint ptr %pwm_cmd_running.i59.sink to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear.i61, ptr %pwm_cmd_running.i59.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxsigma_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @usbduxsigma_driver, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !98, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_usbduxsigma__240_1610_usbduxsigma_driver_init6, !1, !"__initcall__kmod_usbduxsigma__240_1610_usbduxsigma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1610, i32 1}
!2 = !{ptr @__exitcall_usbduxsigma_driver_exit, !1, !"__exitcall_usbduxsigma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1612, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1613, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1614, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware245, !11, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1615, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1584, i32 17}
!14 = !{ptr @usbduxsigma_driver, !15, !"usbduxsigma_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1583, i32 29}
!16 = !{ptr @usbduxsigma_auto_attach.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1455, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1477, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @usbduxsigma_auto_attach._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @usbduxsigma_auto_attach._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1482, i32 45}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1549, i32 3}
!31 = !{ptr @usbduxsigma_auto_attach._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @usbduxsigma_auto_attach._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1554, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usbduxsigma_auto_attach._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @usbduxsigma_auto_attach._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 273, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @usbduxsigma_ai_urb_complete.__UNIQUE_ID_ddebug239, !39, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 287, i32 3}
!44 = !{ptr @usbduxsigma_ai_urb_complete._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usbduxsigma_ai_urb_complete._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 239, i32 4}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @usbduxsigma_ai_handle_urb._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @usbduxsigma_ai_handle_urb._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 242, i32 5}
!53 = !{ptr @usbduxsigma_ai_handle_urb._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @usbduxsigma_ai_handle_urb._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 414, i32 3}
!57 = !{ptr @usbduxsigma_ao_urb_complete._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @usbduxsigma_ao_urb_complete._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 355, i32 5}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @usbduxsigma_ao_handle_urb._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @usbduxsigma_ao_handle_urb._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @usbduxsigma_ao_handle_urb._entry.26, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 378, i32 4}
!66 = !{ptr @usbduxsigma_ao_handle_urb._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @usbduxsigma_ao_handle_urb._entry.28, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 381, i32 5}
!69 = !{ptr @usbduxsigma_ao_handle_urb._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1271, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @usbduxsigma_firmware_upload._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @usbduxsigma_firmware_upload._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1296, i32 3}
!77 = !{ptr @usbduxsigma_firmware_upload._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @usbduxsigma_firmware_upload._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1308, i32 3}
!81 = !{ptr @usbduxsigma_firmware_upload._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @usbduxsigma_firmware_upload._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1321, i32 3}
!85 = !{ptr @usbduxsigma_firmware_upload._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @usbduxsigma_firmware_upload._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @usbduxsigma_ai_range, !88, !"usbduxsigma_ai_range", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 124, i32 35}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1034, i32 4}
!91 = !{ptr @usbduxsigma_pwm_urb_complete._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @usbduxsigma_pwm_urb_complete._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @usbduxsigma_pwm_urb_complete._entry.43, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1049, i32 3}
!95 = !{ptr @usbduxsigma_pwm_urb_complete._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @usbduxsigma_pwm_urb_complete._entry.45, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1051, i32 4}
!98 = !{ptr @usbduxsigma_pwm_urb_complete._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @usbduxsigma_usb_driver, !100, !"usbduxsigma_usb_driver", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1604, i32 26}
!101 = !{ptr @usbduxsigma_usb_table, !102, !"usbduxsigma_usb_table", i1 false, i1 false}
!102 = !{!"../drivers/comedi/drivers/usbduxsigma.c", i32 1596, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"auto-init"}
!114 = !{i32 0, i32 33}
!115 = !{i64 2148731074, i64 2148731079, i64 2148731092, i64 2148731136, i64 2148731170, i64 2148731191}
