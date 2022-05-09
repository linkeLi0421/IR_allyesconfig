; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/usbduxfast.c_pt.bc'
source_filename = "../drivers/comedi/drivers/usbduxfast.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usbduxfast_private = type { ptr, ptr, ptr, i16, i32, %struct.mutex }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_usbduxfast__239_1034_usbduxfast_driver_init6 = internal global ptr @usbduxfast_driver_init, section ".initcall6.init", align 4
@usbduxfast_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @usbduxfast_detach, ptr @usbduxfast_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbduxfast_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbduxfast_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbduxfast_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbduxfast_driver_exit = internal global ptr @usbduxfast_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [48 x i8] c"usbduxfast.author=Bernd Porr, BerndPorr@f2s.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [54 x i8] c"usbduxfast.description=USB-DUXfast, BerndPorr@f2s.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [50 x i8] c"usbduxfast.file=drivers/comedi/drivers/usbduxfast\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"usbduxfast.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [44 x i8] c"usbduxfast.firmware=usbduxfast_firmware.bin\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbduxfast\00", [21 x i8] zeroinitializer }, align 32
@usbduxfast_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"This driver needs USB 2.0 to operate. Aborting...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbduxfast_auto_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/comedi/drivers/usbduxfast.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbduxfast_auto_attach._entry_ptr = internal global ptr @usbduxfast_auto_attach._entry, section ".printk_index", align 4
@usbduxfast_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&devpriv->mut\00", [18 x i8] zeroinitializer }, align 32
@usbduxfast_auto_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 942, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not switch to alternate setting 1\0A\00", [55 x i8] zeroinitializer }, align 32
@usbduxfast_auto_attach._entry_ptr.9 = internal global ptr @usbduxfast_auto_attach._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxfast_firmware.bin\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbduxfast_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware binary too large for FX2\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usbduxfast_upload_firmware\00", [37 x i8] zeroinitializer }, align 32
@usbduxfast_upload_firmware._entry_ptr = internal global ptr @usbduxfast_upload_firmware._entry, section ".printk_index", align 4
@usbduxfast_upload_firmware._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can not stop firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@usbduxfast_upload_firmware._entry_ptr.15 = internal global ptr @usbduxfast_upload_firmware._entry.13, section ".printk_index", align 4
@usbduxfast_upload_firmware._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware upload failed\0A\00", [40 x i8] zeroinitializer }, align 32
@usbduxfast_upload_firmware._entry_ptr.18 = internal global ptr @usbduxfast_upload_firmware._entry.16, section ".printk_index", align 4
@usbduxfast_upload_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can not start firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@usbduxfast_upload_firmware._entry_ptr.21 = internal global ptr @usbduxfast_upload_firmware._entry.19, section ".printk_index", align 4
@range_usbduxfast_ai_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -750000, i32 750000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@usbduxfast_ai_insn_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ai_insn_read not possible, async cmd is running\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxfast_ai_insn_read\00", [40 x i8] zeroinitializer }, align 32
@usbduxfast_ai_insn_read._entry_ptr = internal global ptr @usbduxfast_ai_insn_read._entry, section ".printk_index", align 4
@usbduxfast_ai_insn_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"insn timeout, no data\0A\00", [41 x i8] zeroinitializer }, align 32
@usbduxfast_ai_insn_read._entry_ptr.27 = internal global ptr @usbduxfast_ai_insn_read._entry.25, section ".printk_index", align 4
@usbduxfast_ai_insn_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"insn data error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@usbduxfast_ai_insn_read._entry_ptr.30 = internal global ptr @usbduxfast_ai_insn_read._entry.28, section ".printk_index", align 4
@usbduxfast_ai_insn_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 826, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"insn data packet corrupted\0A\00", [36 x i8] zeroinitializer }, align 32
@usbduxfast_ai_insn_read._entry_ptr.33 = internal global ptr @usbduxfast_ai_insn_read._entry.31, section ".printk_index", align 4
@usbduxfast_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"could not transmit command to the usb-device, err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbduxfast_send_cmd\00", [44 x i8] zeroinitializer }, align 32
@usbduxfast_send_cmd._entry_ptr = internal global ptr @usbduxfast_send_cmd._entry, section ".printk_index", align 4
@usbduxfast_ai_check_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported combination of channels\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbduxfast_ai_check_chanlist\00", [35 x i8] zeroinitializer }, align 32
@usbduxfast_ai_check_chanlist._entry_ptr = internal global ptr @usbduxfast_ai_check_chanlist._entry, section ".printk_index", align 4
@usbduxfast_ai_check_chanlist._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"channels are not consecutive\0A\00", [34 x i8] zeroinitializer }, align 32
@usbduxfast_ai_check_chanlist._entry_ptr.40 = internal global ptr @usbduxfast_ai_check_chanlist._entry.38, section ".printk_index", align 4
@usbduxfast_ai_check_chanlist._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gain must be the same for all channels\0A\00", [56 x i8] zeroinitializer }, align 32
@usbduxfast_ai_check_chanlist._entry_ptr.43 = internal global ptr @usbduxfast_ai_check_chanlist._entry.41, section ".printk_index", align 4
@usbduxfast_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_submit_urb error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbduxfast_submit_urb\00", [42 x i8] zeroinitializer }, align 32
@usbduxfast_submit_urb._entry_ptr = internal global ptr @usbduxfast_submit_urb._entry, section ".printk_index", align 4
@usbduxfast_ai_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"non-zero urb status received in ai intr context: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxfast_ai_interrupt\00", [40 x i8] zeroinitializer }, align 32
@usbduxfast_ai_interrupt._entry_ptr = internal global ptr @usbduxfast_ai_interrupt._entry, section ".printk_index", align 4
@usbduxfast_ai_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"urb resubm failed: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbduxfast_ai_handle_urb\00", [39 x i8] zeroinitializer }, align 32
@usbduxfast_ai_handle_urb._entry_ptr = internal global ptr @usbduxfast_ai_handle_urb._entry, section ".printk_index", align 4
@usbduxfast_ai_inttrig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"urbSubmit: err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbduxfast_ai_inttrig\00", [42 x i8] zeroinitializer }, align 32
@usbduxfast_ai_inttrig._entry_ptr = internal global ptr @usbduxfast_ai_inttrig._entry, section ".printk_index", align 4
@usbduxfast_ai_inttrig._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ai is already running\0A\00", [41 x i8] zeroinitializer }, align 32
@usbduxfast_ai_inttrig._entry_ptr.54 = internal global ptr @usbduxfast_ai_inttrig._entry.52, section ".printk_index", align 4
@usbduxfast_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5080, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5080, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 16]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967294]
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"usbduxfast_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1007, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"usbduxfast_usb_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1028, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1008, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 922, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 931, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 941, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 954, i32 45 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 854, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 879, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 891, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 904, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"range_usbduxfast_ai_range\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 136, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 776, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 809, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 820, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 826, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 177, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 327, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 336, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 341, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 313, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 284, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 252, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 451, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 458, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"usbduxfast_usb_table\00", align 1
@___asan_gen_.231 = private constant [39 x i8] c"../drivers/comedi/drivers/usbduxfast.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1020, i32 35 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_license243, ptr @__exitcall_usbduxfast_driver_exit, ptr @__initcall__kmod_usbduxfast__239_1034_usbduxfast_driver_init6, ptr @usbduxfast_ai_check_chanlist._entry, ptr @usbduxfast_ai_check_chanlist._entry.38, ptr @usbduxfast_ai_check_chanlist._entry.41, ptr @usbduxfast_ai_check_chanlist._entry_ptr, ptr @usbduxfast_ai_check_chanlist._entry_ptr.40, ptr @usbduxfast_ai_check_chanlist._entry_ptr.43, ptr @usbduxfast_ai_handle_urb._entry, ptr @usbduxfast_ai_handle_urb._entry_ptr, ptr @usbduxfast_ai_insn_read._entry, ptr @usbduxfast_ai_insn_read._entry.25, ptr @usbduxfast_ai_insn_read._entry.28, ptr @usbduxfast_ai_insn_read._entry.31, ptr @usbduxfast_ai_insn_read._entry_ptr, ptr @usbduxfast_ai_insn_read._entry_ptr.27, ptr @usbduxfast_ai_insn_read._entry_ptr.30, ptr @usbduxfast_ai_insn_read._entry_ptr.33, ptr @usbduxfast_ai_interrupt._entry, ptr @usbduxfast_ai_interrupt._entry_ptr, ptr @usbduxfast_ai_inttrig._entry, ptr @usbduxfast_ai_inttrig._entry.52, ptr @usbduxfast_ai_inttrig._entry_ptr, ptr @usbduxfast_ai_inttrig._entry_ptr.54, ptr @usbduxfast_auto_attach._entry, ptr @usbduxfast_auto_attach._entry.7, ptr @usbduxfast_auto_attach._entry_ptr, ptr @usbduxfast_auto_attach._entry_ptr.9, ptr @usbduxfast_driver_exit, ptr @usbduxfast_send_cmd._entry, ptr @usbduxfast_send_cmd._entry_ptr, ptr @usbduxfast_submit_urb._entry, ptr @usbduxfast_submit_urb._entry_ptr, ptr @usbduxfast_upload_firmware._entry, ptr @usbduxfast_upload_firmware._entry.13, ptr @usbduxfast_upload_firmware._entry.16, ptr @usbduxfast_upload_firmware._entry.19, ptr @usbduxfast_upload_firmware._entry_ptr, ptr @usbduxfast_upload_firmware._entry_ptr.15, ptr @usbduxfast_upload_firmware._entry_ptr.18, ptr @usbduxfast_upload_firmware._entry_ptr.21, ptr @usbduxfast_driver, ptr @usbduxfast_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @usbduxfast_auto_attach.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @range_usbduxfast_ai_range, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @usbduxfast_usb_table], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_auto_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_upload_firmware._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_upload_firmware._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_upload_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_usbduxfast_ai_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_insn_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_insn_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_insn_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_insn_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_check_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_check_chanlist._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_check_chanlist._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_inttrig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_ai_inttrig._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxfast_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @usbduxfast_driver, ptr noundef nonnull @usbduxfast_usb_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbduxfast_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @usbduxfast_driver, ptr noundef nonnull @usbduxfast_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxfast_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #7
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %4) #7
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inbuf, align 4
  tail call void @kfree(ptr noundef %6) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @usb_free_urb(ptr noundef %8) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %duxbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %duxbuf, align 4
  tail call void @kfree(ptr noundef %10) #7
  tail call void @mutex_unlock(ptr noundef %mut) #7
  tail call void @mutex_destroy(ptr noundef %mut) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #7
  %call1 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %speed = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 112) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %call2, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mut, ptr noundef nonnull @.str.6, ptr noundef nonnull @usbduxfast_auto_attach.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 256) #11
  %duxbuf = getelementptr inbounds %struct.usbduxfast_private, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %duxbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %duxbuf, align 4
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.body5.cleanup_crit_edge, label %if.end12

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.body5
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %10 to i32
  %call13 = tail call i32 @usb_set_interface(ptr noundef %call1, i32 noundef %conv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev20 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call22 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %call2, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i80 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 512) #11
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, ptr %call2, i32 0, i32 2
  %15 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i80, ptr %inbuf, align 4
  %tobool29.not = icmp eq ptr %call7.i80, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  %call33 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev32, ptr noundef nonnull @.str.10, ptr noundef nonnull @usbduxfast_upload_firmware, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %18 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1146880, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 13
  %22 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 15
  %23 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @range_usbduxfast_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 18
  %24 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @usbduxfast_ai_insn_read, ptr %insn_read, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 5
  %25 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 23
  %26 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @usbduxfast_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 22
  %27 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @usbduxfast_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 25
  %28 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @usbduxfast_ai_cancel, ptr %cancel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end19, %do.body5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end19 ], [ 0, %if.end40 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.body5.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_upload_firmware(ptr noundef %dev, ptr noundef %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %size)
  %cmp = icmp ugt i32 %size, 8192
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef %size, i32 noundef 3264) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #11
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call3) #7
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
  %call12 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.done.sink.split_crit_edge, label %if.end19

if.end10.done.sink.split_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

if.end19:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 8
  %shl.i68 = shl i32 %7, 8
  %or21 = or i32 %shl.i68, -2147483648
  %conv = trunc i32 %size to i16
  %call22 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or21, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call3, i16 noundef zeroext %conv, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.done.sink.split_crit_edge, label %if.end30

if.end19.done.sink.split_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
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
  %call33 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or32, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end30.done.sink.split_crit_edge, label %if.end30.done_crit_edge

if.end30.done_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end30.done.sink.split_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end30.done.sink.split_crit_edge, %if.end19.done.sink.split_crit_edge, %if.end10.done.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.14, %if.end10.done.sink.split_crit_edge ], [ @.str.17, %if.end19.done.sink.split_crit_edge ], [ @.str.20, %if.end30.done.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call12, %if.end10.done.sink.split_crit_edge ], [ %call22, %if.end19.done.sink.split_crit_edge ], [ %call33, %if.end30.done.sink.split_crit_edge ]
  %class_dev40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.20.sink) #10
  br label %done

done:                                             ; preds = %done.sink.split, %if.end30.done_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end30.done_crit_edge ], [ %ret.0.ph, %done.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  tail call void @kfree(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then9, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %done ], [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_ai_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #7
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %actual_length, align 4, !annotation !124
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #7
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23) #10
  tail call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %conv = select i1 %tobool.not, i8 -1, i8 -5
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %duxbuf.i = getelementptr inbounds %struct.usbduxfast_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %duxbuf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx.i, align 1
  %15 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %15, i32 9
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx3.i, align 1
  %17 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %17, i32 17
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx6.i, align 1
  %19 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %19, i32 25
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx9.i, align 1
  %21 = and i8 %conv, -2
  %22 = load ptr, ptr %private, align 4
  %duxbuf.i141 = getelementptr inbounds %struct.usbduxfast_private, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %duxbuf.i141 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %duxbuf.i141, align 4
  %arrayidx.i142 = getelementptr i8, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %arrayidx.i142, align 1
  %26 = load ptr, ptr %duxbuf.i141, align 4
  %arrayidx3.i143 = getelementptr i8, ptr %26, i32 10
  %27 = ptrtoint ptr %arrayidx3.i143 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx3.i143, align 1
  %28 = load ptr, ptr %duxbuf.i141, align 4
  %arrayidx6.i144 = getelementptr i8, ptr %28, i32 18
  %29 = ptrtoint ptr %arrayidx6.i144 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %21, ptr %arrayidx6.i144, align 1
  %30 = load ptr, ptr %duxbuf.i141, align 4
  %arrayidx9.i145 = getelementptr i8, ptr %30, i32 26
  %31 = ptrtoint ptr %arrayidx9.i145 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx9.i145, align 1
  %32 = load ptr, ptr %private, align 4
  %duxbuf.i147 = getelementptr inbounds %struct.usbduxfast_private, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %duxbuf.i147 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %duxbuf.i147, align 4
  %arrayidx.i148 = getelementptr i8, ptr %34, i32 3
  %35 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx.i148, align 1
  %36 = load ptr, ptr %duxbuf.i147, align 4
  %arrayidx3.i149 = getelementptr i8, ptr %36, i32 11
  %37 = ptrtoint ptr %arrayidx3.i149 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx3.i149, align 1
  %38 = load ptr, ptr %duxbuf.i147, align 4
  %arrayidx6.i150 = getelementptr i8, ptr %38, i32 19
  %39 = ptrtoint ptr %arrayidx6.i150 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %21, ptr %arrayidx6.i150, align 1
  %40 = load ptr, ptr %duxbuf.i147, align 4
  %arrayidx9.i151 = getelementptr i8, ptr %40, i32 27
  %41 = ptrtoint ptr %arrayidx9.i151 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx9.i151, align 1
  %42 = load ptr, ptr %private, align 4
  %duxbuf.i153 = getelementptr inbounds %struct.usbduxfast_private, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %duxbuf.i153 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %duxbuf.i153, align 4
  %arrayidx.i154 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx.i154, align 1
  %46 = load ptr, ptr %duxbuf.i153, align 4
  %arrayidx3.i155 = getelementptr i8, ptr %46, i32 12
  %47 = ptrtoint ptr %arrayidx3.i155 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx3.i155, align 1
  %48 = load ptr, ptr %duxbuf.i153, align 4
  %arrayidx6.i156 = getelementptr i8, ptr %48, i32 20
  %49 = ptrtoint ptr %arrayidx6.i156 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %21, ptr %arrayidx6.i156, align 1
  %50 = load ptr, ptr %duxbuf.i153, align 4
  %arrayidx9.i157 = getelementptr i8, ptr %50, i32 28
  %51 = ptrtoint ptr %arrayidx9.i157 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx9.i157, align 1
  %52 = load ptr, ptr %private, align 4
  %duxbuf.i159 = getelementptr inbounds %struct.usbduxfast_private, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %duxbuf.i159 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %duxbuf.i159, align 4
  %arrayidx.i160 = getelementptr i8, ptr %54, i32 5
  %55 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %arrayidx.i160, align 1
  %56 = load ptr, ptr %duxbuf.i159, align 4
  %arrayidx3.i161 = getelementptr i8, ptr %56, i32 13
  %57 = ptrtoint ptr %arrayidx3.i161 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx3.i161, align 1
  %58 = load ptr, ptr %duxbuf.i159, align 4
  %arrayidx6.i162 = getelementptr i8, ptr %58, i32 21
  %59 = ptrtoint ptr %arrayidx6.i162 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %21, ptr %arrayidx6.i162, align 1
  %60 = load ptr, ptr %duxbuf.i159, align 4
  %arrayidx9.i163 = getelementptr i8, ptr %60, i32 29
  %61 = ptrtoint ptr %arrayidx9.i163 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx9.i163, align 1
  %62 = load ptr, ptr %private, align 4
  %duxbuf.i165 = getelementptr inbounds %struct.usbduxfast_private, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %duxbuf.i165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %duxbuf.i165, align 4
  %arrayidx.i166 = getelementptr i8, ptr %64, i32 6
  %65 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 12, ptr %arrayidx.i166, align 1
  %66 = load ptr, ptr %duxbuf.i165, align 4
  %arrayidx3.i167 = getelementptr i8, ptr %66, i32 14
  %67 = ptrtoint ptr %arrayidx3.i167 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx3.i167, align 1
  %68 = load ptr, ptr %duxbuf.i165, align 4
  %arrayidx6.i168 = getelementptr i8, ptr %68, i32 22
  %69 = ptrtoint ptr %arrayidx6.i168 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv, ptr %arrayidx6.i168, align 1
  %70 = load ptr, ptr %duxbuf.i165, align 4
  %arrayidx9.i169 = getelementptr i8, ptr %70, i32 30
  %71 = ptrtoint ptr %arrayidx9.i169 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx9.i169, align 1
  %72 = load ptr, ptr %private, align 4
  %duxbuf.i171 = getelementptr inbounds %struct.usbduxfast_private, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %duxbuf.i171 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %duxbuf.i171, align 4
  %arrayidx.i172 = getelementptr i8, ptr %74, i32 7
  %75 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %arrayidx.i172, align 1
  %76 = load ptr, ptr %duxbuf.i171, align 4
  %arrayidx3.i173 = getelementptr i8, ptr %76, i32 15
  %77 = ptrtoint ptr %arrayidx3.i173 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx3.i173, align 1
  %78 = load ptr, ptr %duxbuf.i171, align 4
  %arrayidx6.i174 = getelementptr i8, ptr %78, i32 23
  %79 = ptrtoint ptr %arrayidx6.i174 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv, ptr %arrayidx6.i174, align 1
  %80 = load ptr, ptr %duxbuf.i171, align 4
  %arrayidx9.i175 = getelementptr i8, ptr %80, i32 31
  %81 = ptrtoint ptr %arrayidx9.i175 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx9.i175, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %82 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #7
  %84 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %nsent.i, align 4, !annotation !124
  %duxbuf.i177 = getelementptr inbounds %struct.usbduxfast_private, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %duxbuf.i177 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %duxbuf.i177, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %86, align 1
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %89, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %90 = load ptr, ptr %duxbuf.i177, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %90, i32 noundef 256, ptr noundef nonnull %nsent.i, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then19, label %usbduxfast_send_cmd.exit

usbduxfast_send_cmd.exit:                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #7
  %inbuf = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 2
  %91 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call, align 8
  %shl.i = shl i32 %92, 8
  %or25 = or i32 %shl.i, -1073545088
  %93 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %inbuf, align 4
  %call26 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or25, ptr noundef %94, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %usbduxfast_send_cmd.exit.do.end32_crit_edge, label %for.cond

usbduxfast_send_cmd.exit.do.end32_crit_edge:      ; preds = %usbduxfast_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %95 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.34, i32 noundef %call3.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #7
  call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

for.cond:                                         ; preds = %usbduxfast_send_cmd.exit
  %97 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call, align 8
  %shl.i.1 = shl i32 %98, 8
  %or25.1 = or i32 %shl.i.1, -1073545088
  %99 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %inbuf, align 4
  %call26.1 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or25.1, ptr noundef %100, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  br i1 %cmp27.1, label %for.cond.do.end32_crit_edge, label %for.cond.1

for.cond.do.end32_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.1:                                       ; preds = %for.cond
  %101 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %call, align 8
  %shl.i.2 = shl i32 %102, 8
  %or25.2 = or i32 %shl.i.2, -1073545088
  %103 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %inbuf, align 4
  %call26.2 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or25.2, ptr noundef %104, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %cmp27.2 = icmp slt i32 %call26.2, 0
  br i1 %cmp27.2, label %for.cond.1.do.end32_crit_edge, label %for.cond.2

for.cond.1.do.end32_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.2:                                       ; preds = %for.cond.1
  %105 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call, align 8
  %shl.i.3 = shl i32 %106, 8
  %or25.3 = or i32 %shl.i.3, -1073545088
  %107 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %inbuf, align 4
  %call26.3 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or25.3, ptr noundef %108, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %cmp27.3 = icmp slt i32 %call26.3, 0
  br i1 %cmp27.3, label %for.cond.2.do.end32_crit_edge, label %for.cond.3

for.cond.2.do.end32_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.3:                                       ; preds = %for.cond.2
  %n37 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %109 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp38189.not = icmp eq i32 %110, 0
  br i1 %cmp38189.not, label %for.cond.3.for.end77_crit_edge, label %for.cond.3.for.body40_crit_edge

for.cond.3.for.body40_crit_edge:                  ; preds = %for.cond.3
  br label %for.body40

for.cond.3.for.end77_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

do.end32:                                         ; preds = %for.cond.2.do.end32_crit_edge, %for.cond.1.do.end32_crit_edge, %for.cond.do.end32_crit_edge, %usbduxfast_send_cmd.exit.do.end32_crit_edge
  %call26.lcssa = phi i32 [ %call26, %usbduxfast_send_cmd.exit.do.end32_crit_edge ], [ %call26.1, %for.cond.do.end32_crit_edge ], [ %call26.2, %for.cond.1.do.end32_crit_edge ], [ %call26.3, %for.cond.2.do.end32_crit_edge ]
  %class_dev33 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %111 = ptrtoint ptr %class_dev33 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %class_dev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.26) #10
  call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

for.body40:                                       ; preds = %for.end76.for.body40_crit_edge, %for.cond.3.for.body40_crit_edge
  %i.1190 = phi i32 [ %i.2.lcssa, %for.end76.for.body40_crit_edge ], [ 0, %for.cond.3.for.body40_crit_edge ]
  %113 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call, align 8
  %shl.i179 = shl i32 %114, 8
  %or43 = or i32 %shl.i179, -1073545088
  %115 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %inbuf, align 4
  %call45 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or43, ptr noundef %116, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.end54

do.end51:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev52 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %117 = ptrtoint ptr %class_dev52 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %class_dev52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.29, i32 noundef %call45) #10
  call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

if.end54:                                         ; preds = %for.body40
  %119 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %actual_length, align 4
  %div139 = lshr i32 %120, 1
  %121 = and i32 %120, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp55.not = icmp eq i32 %121, 0
  br i1 %cmp55.not, label %for.cond64.preheader, label %do.end60

for.cond64.preheader:                             ; preds = %if.end54
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %div139)
  %cmp65185 = icmp ult i32 %and, %div139
  br i1 %cmp65185, label %for.cond64.preheader.land.rhs_crit_edge, label %for.cond64.preheader.for.end76_crit_edge

for.cond64.preheader.for.end76_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76

for.cond64.preheader.land.rhs_crit_edge:          ; preds = %for.cond64.preheader
  br label %land.rhs

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev61 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %122 = ptrtoint ptr %class_dev61 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %class_dev61, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.32) #10
  call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

land.rhs:                                         ; preds = %for.body70.land.rhs_crit_edge, %for.cond64.preheader.land.rhs_crit_edge
  %j.0187 = phi i32 [ %add, %for.body70.land.rhs_crit_edge ], [ %and, %for.cond64.preheader.land.rhs_crit_edge ]
  %i.2186 = phi i32 [ %inc74, %for.body70.land.rhs_crit_edge ], [ %i.1190, %for.cond64.preheader.land.rhs_crit_edge ]
  %124 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %n37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2186, i32 %125)
  %cmp68 = icmp ult i32 %i.2186, %125
  br i1 %cmp68, label %for.body70, label %land.rhs.for.end76_crit_edge

land.rhs.for.end76_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76

for.body70:                                       ; preds = %land.rhs
  %126 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %inbuf, align 4
  %arrayidx = getelementptr i16, ptr %127, i32 %j.0187
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx, align 2
  %conv72 = zext i16 %129 to i32
  %arrayidx73 = getelementptr i32, ptr %data, i32 %i.2186
  %130 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv72, ptr %arrayidx73, align 4
  %inc74 = add nuw i32 %i.2186, 1
  %add = add i32 %j.0187, 16
  %cmp65 = icmp slt i32 %add, %div139
  br i1 %cmp65, label %for.body70.land.rhs_crit_edge, label %for.body70.for.end76_crit_edge

for.body70.for.end76_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76

for.body70.land.rhs_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end76:                                        ; preds = %for.body70.for.end76_crit_edge, %land.rhs.for.end76_crit_edge, %for.cond64.preheader.for.end76_crit_edge
  %i.2.lcssa = phi i32 [ %i.1190, %for.cond64.preheader.for.end76_crit_edge ], [ %inc74, %for.body70.for.end76_crit_edge ], [ %i.2186, %land.rhs.for.end76_crit_edge ]
  %131 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %n37, align 4
  %cmp38 = icmp ult i32 %i.2.lcssa, %132
  br i1 %cmp38, label %for.end76.for.body40_crit_edge, label %for.end76.for.end77_crit_edge

for.end76.for.end77_crit_edge:                    ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

for.end76.for.body40_crit_edge:                   ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

for.end77:                                        ; preds = %for.end76.for.end77_crit_edge, %for.cond.3.for.end77_crit_edge
  call void @mutex_unlock(ptr noundef %mut) #7
  %133 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %n37, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end77, %do.end60, %do.end51, %do.end32, %if.then19, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call3.i, %if.then19 ], [ %call26.lcssa, %do.end32 ], [ %call45, %do.end51 ], [ -22, %do.end60 ], [ %134, %for.end77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 194
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
  %and.i127 = and i32 %3, 4
  store i32 %and.i127, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %cmp.i128 = icmp ne i32 %and.i127, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i127, i32 %3)
  %cmp1.not.i129 = icmp eq i32 %and.i127, %3
  %or.cond.i130 = and i1 %cmp.i128, %cmp1.not.i129
  %4 = select i1 %or.cond.i, i1 %or.cond.i130, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i132 = and i32 %6, 16
  store i32 %and.i132, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %cmp.i133 = icmp ne i32 %and.i132, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i132, i32 %6)
  %cmp1.not.i134 = icmp eq i32 %and.i132, %6
  %or.cond.i135 = and i1 %cmp.i133, %cmp1.not.i134
  %7 = select i1 %4, i1 %or.cond.i135, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i137 = and i32 %9, 32
  store i32 %and.i137, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %cmp.i138 = icmp ne i32 %and.i137, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i137, i32 %9)
  %cmp1.not.i139 = icmp eq i32 %and.i137, %9
  %or.cond.i140 = and i1 %cmp.i138, %cmp1.not.i139
  %10 = select i1 %7, i1 %or.cond.i140, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i142 = and i32 %12, 33
  store i32 %and.i142, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %cmp.i143 = icmp ne i32 %and.i142, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i142, i32 %12)
  %cmp1.not.i144 = icmp eq i32 %and.i142, %12
  %or.cond.i145 = and i1 %cmp.i143, %cmp1.not.i144
  %13 = select i1 %10, i1 %or.cond.i145, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i147 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i147, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i149 = icmp eq i32 %18, 0
  br i1 %cmp.not.i149, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i150 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool20.not, i32 -22, i32 %retval.0.i150
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp eq i32 %1, 64
  br i1 %cmp, label %land.lhs.true, label %comedi_check_trigger_arg_is.exit.if.end32_crit_edge

comedi_check_trigger_arg_is.exit.if.end32_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %comedi_check_trigger_arg_is.exit
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.then30 [
    i32 1, label %land.lhs.true.if.end32_crit_edge
    i32 16, label %land.lhs.true.if.end32_crit_edge192
  ]

land.lhs.true.if.end32_crit_edge192:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge192, %comedi_check_trigger_arg_is.exit.if.end32_crit_edge
  %err.1 = phi i32 [ -22, %if.then30 ], [ %spec.select, %land.lhs.true.if.end32_crit_edge ], [ %spec.select, %comedi_check_trigger_arg_is.exit.if.end32_crit_edge ], [ %spec.select, %land.lhs.true.if.end32_crit_edge192 ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %23 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %21)
  %cmp.not.i151 = icmp eq i32 %24, %21
  br i1 %cmp.not.i151, label %if.end32.comedi_check_trigger_arg_is.exit154_crit_edge, label %if.then.i152

if.end32.comedi_check_trigger_arg_is.exit154_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit154

if.then.i152:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit154

comedi_check_trigger_arg_is.exit154:              ; preds = %if.then.i152, %if.end32.comedi_check_trigger_arg_is.exit154_crit_edge
  %retval.0.i153 = phi i32 [ -22, %if.then.i152 ], [ 0, %if.end32.comedi_check_trigger_arg_is.exit154_crit_edge ]
  %or35 = or i32 %retval.0.i153, %err.1
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %26 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %convert_arg, align 4
  %mul = mul i32 %27, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp37.not = icmp eq i32 %21, 1
  br i1 %cmp37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %comedi_check_trigger_arg_is.exit154
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %mul)
  %cmp.i155 = icmp ult i32 %mul, 9000
  br i1 %cmp.i155, label %if.then38.comedi_check_trigger_arg_max.exit_crit_edge, label %if.then38.if.end43_crit_edge

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit154
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %28 = icmp ult i32 %mul, 1000
  br i1 %28, label %if.else.comedi_check_trigger_arg_max.exit_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then38.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 500999, i32 %mul)
  %cmp.i162 = icmp ugt i32 %mul, 500999
  %spec.select190 = select i1 %cmp.i162, i32 -22, i32 0
  %29 = urem i32 %mul, 1000
  %div.op = sub nuw i32 %mul, %29
  %div.op.op = udiv i32 %div.op, 30
  %phi.bo191 = select i1 %cmp.i162, i32 16666, i32 %div.op.op
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_max.exit:                ; preds = %if.end43, %if.else.comedi_check_trigger_arg_max.exit_crit_edge, %if.then38.comedi_check_trigger_arg_max.exit_crit_edge
  %err2.0183 = phi i32 [ -22, %if.then38.comedi_check_trigger_arg_max.exit_crit_edge ], [ -22, %if.else.comedi_check_trigger_arg_max.exit_crit_edge ], [ 0, %if.end43 ]
  %steps.3 = phi i32 [ 300, %if.then38.comedi_check_trigger_arg_max.exit_crit_edge ], [ 33, %if.else.comedi_check_trigger_arg_max.exit_crit_edge ], [ %phi.bo191, %if.end43 ]
  %retval.0.i164 = phi i32 [ 0, %if.then38.comedi_check_trigger_arg_max.exit_crit_edge ], [ 0, %if.else.comedi_check_trigger_arg_max.exit_crit_edge ], [ %spec.select190, %if.end43 ]
  %or45 = or i32 %retval.0.i164, %err2.0183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or45)
  %tobool46.not = icmp eq i32 %or45, 0
  br i1 %tobool46.not, label %comedi_check_trigger_arg_max.exit.if.end54_crit_edge, label %if.then47

comedi_check_trigger_arg_max.exit.if.end54_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then47:                                        ; preds = %comedi_check_trigger_arg_max.exit
  %or48 = or i32 %or45, %or35
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %steps.3)
  %cmp.not.i165 = icmp eq i32 %27, %steps.3
  br i1 %cmp.not.i165, label %if.then47.comedi_check_trigger_arg_is.exit168_crit_edge, label %if.then.i166

if.then47.comedi_check_trigger_arg_is.exit168_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit168

if.then.i166:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %steps.3, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit168

comedi_check_trigger_arg_is.exit168:              ; preds = %if.then.i166, %if.then47.comedi_check_trigger_arg_is.exit168_crit_edge
  %retval.0.i167 = phi i32 [ -22, %if.then.i166 ], [ 0, %if.then47.comedi_check_trigger_arg_is.exit168_crit_edge ]
  %or53 = or i32 %or48, %retval.0.i167
  br label %if.end54

if.end54:                                         ; preds = %comedi_check_trigger_arg_is.exit168, %comedi_check_trigger_arg_max.exit.if.end54_crit_edge
  %err.2 = phi i32 [ %or53, %comedi_check_trigger_arg_is.exit168 ], [ %or35, %comedi_check_trigger_arg_max.exit.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp56 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i169 = icmp eq i32 %32, 0
  br i1 %cmp56, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.end54
  br i1 %cmp.i169, label %if.then57.if.end64.sink.split_crit_edge, label %if.then57.if.end64_crit_edge

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then57.if.end64.sink.split_crit_edge:          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.sink.split

if.else60:                                        ; preds = %if.end54
  br i1 %cmp.i169, label %if.else60.if.end64_crit_edge, label %if.else60.if.end64.sink.split_crit_edge

if.else60.if.end64.sink.split_crit_edge:          ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.sink.split

if.else60.if.end64_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64.sink.split:                              ; preds = %if.else60.if.end64.sink.split_crit_edge, %if.then57.if.end64.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then57.if.end64.sink.split_crit_edge ], [ 0, %if.else60.if.end64.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.else60.if.end64_crit_edge, %if.then57.if.end64_crit_edge
  %call58.pn = phi i32 [ 0, %if.then57.if.end64_crit_edge ], [ 0, %if.else60.if.end64_crit_edge ], [ -22, %if.end64.sink.split ]
  %err.3 = or i32 %call58.pn, %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool65.not = icmp eq i32 %err.3, 0
  br i1 %tobool65.not, label %if.end67, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end64
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %34 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chanlist, align 4
  %tobool68.not = icmp eq ptr %35, null
  %brmerge = select i1 %tobool68.not, i1 true, i1 %tobool20.not
  br i1 %brmerge, label %if.end67.cleanup_crit_edge, label %if.then72

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then72:                                        ; preds = %if.end67
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %21, label %if.then72.if.end75_crit_edge [
    i32 16, label %if.then72.for.body.lr.ph.i_crit_edge
    i32 1, label %if.then72.for.body.lr.ph.i_crit_edge193
    i32 2, label %if.then72.for.body.lr.ph.i_crit_edge194
    i32 3, label %if.then72.for.body.lr.ph.i_crit_edge195
  ]

if.then72.for.body.lr.ph.i_crit_edge195:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then72.for.body.lr.ph.i_crit_edge194:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then72.for.body.lr.ph.i_crit_edge193:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then72.for.body.lr.ph.i_crit_edge:             ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.then72.if.end75_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body.lr.ph.i:                                 ; preds = %if.then72.for.body.lr.ph.i_crit_edge, %if.then72.for.body.lr.ph.i_crit_edge193, %if.then72.for.body.lr.ph.i_crit_edge194, %if.then72.for.body.lr.ph.i_crit_edge195
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp22.i = icmp ugt i32 %21, 3
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end18.i
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr i32, ptr %35, i32 %i.05.i
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx6.i, align 4
  %and7.i = and i32 %40, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %i.05.i)
  %cmp12.not.i = icmp eq i32 %and7.i, %i.05.i
  br i1 %cmp12.not.i, label %if.end18.i, label %for.body.i.if.end75_crit_edge

for.body.i.if.end75_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end18.i:                                       ; preds = %for.body.i
  %shr101.i = xor i32 %40, %37
  %41 = and i32 %shr101.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp19.not.i = icmp ne i32 %41, 0
  %or.cond2.i = select i1 %cmp19.not.i, i1 %cmp22.i, i1 false
  br i1 %or.cond2.i, label %if.end18.i.if.end75_crit_edge, label %for.cond.i

if.end18.i.if.end75_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end75:                                         ; preds = %if.end18.i.if.end75_crit_edge, %for.body.i.if.end75_crit_edge, %if.then72.if.end75_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.36, %if.then72.if.end75_crit_edge ], [ @.str.42, %if.end18.i.if.end75_crit_edge ], [ @.str.39, %for.body.i.if.end75_crit_edge ]
  %class_dev17.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %42 = ptrtoint ptr %class_dev17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull %.str.39.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %for.cond.i.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end64.cleanup_crit_edge ], [ 5, %if.end75 ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #7
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cmd_exit_crit_edge

entry.cmd_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cmd_exit

if.end:                                           ; preds = %entry
  %ignore = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ignore to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %ignore, align 4
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %7 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_arg, align 4
  %mul = mul i32 %8, 30
  %div = udiv i32 %mul, 1000
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %9 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chanlist_len, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb32
    i32 3, label %for.cond.preheader
    i32 16, label %sw.bb131
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist85 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %div94 = udiv i32 %mul, 2000
  %conv95 = trunc i32 %div94 to i8
  %sub108 = sub nsw i32 %div, %div94
  %conv109 = trunc i32 %sub108 to i8
  %12 = ptrtoint ptr %chanlist85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist85, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp89.not = icmp eq i32 %16, 0
  %.291 = select i1 %cmp89.not, i8 -1, i8 -5
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %duxbuf.i379 = getelementptr inbounds %struct.usbduxfast_private, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %duxbuf.i379 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %duxbuf.i379, align 4
  %arrayidx.i380 = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv95, ptr %arrayidx.i380, align 1
  %22 = load ptr, ptr %duxbuf.i379, align 4
  %arrayidx3.i381 = getelementptr i8, ptr %22, i32 9
  %23 = ptrtoint ptr %arrayidx3.i381 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx3.i381, align 1
  %24 = load ptr, ptr %duxbuf.i379, align 4
  %arrayidx6.i382 = getelementptr i8, ptr %24, i32 17
  %25 = ptrtoint ptr %arrayidx6.i382 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.291, ptr %arrayidx6.i382, align 1
  %26 = load ptr, ptr %duxbuf.i379, align 4
  %arrayidx9.i383 = getelementptr i8, ptr %26, i32 25
  %27 = ptrtoint ptr %arrayidx9.i383 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx9.i383, align 1
  %28 = ptrtoint ptr %chanlist85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chanlist85, align 4
  %arrayidx98 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx98, align 4
  %32 = and i32 %31, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp101.not = icmp eq i32 %32, 0
  %33 = select i1 %cmp101.not, i8 -1, i8 -5
  %conv111 = and i8 %33, -2
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private, align 4
  %duxbuf.i385 = getelementptr inbounds %struct.usbduxfast_private, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %duxbuf.i385 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %duxbuf.i385, align 4
  %arrayidx.i386 = getelementptr i8, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx.i386 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv109, ptr %arrayidx.i386, align 1
  %39 = load ptr, ptr %duxbuf.i385, align 4
  %arrayidx3.i387 = getelementptr i8, ptr %39, i32 10
  %40 = ptrtoint ptr %arrayidx3.i387 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx3.i387, align 1
  %41 = load ptr, ptr %duxbuf.i385, align 4
  %arrayidx6.i388 = getelementptr i8, ptr %41, i32 18
  %42 = ptrtoint ptr %arrayidx6.i388 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv111, ptr %arrayidx6.i388, align 1
  %43 = load ptr, ptr %duxbuf.i385, align 4
  %arrayidx9.i389 = getelementptr i8, ptr %43, i32 26
  %44 = ptrtoint ptr %arrayidx9.i389 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx9.i389, align 1
  %sub112 = add nsw i32 %div, -2
  %div113 = sdiv i32 %sub112, 2
  %conv114 = trunc i32 %div113 to i8
  %45 = load ptr, ptr %private, align 4
  %duxbuf.i391 = getelementptr inbounds %struct.usbduxfast_private, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %duxbuf.i391 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %duxbuf.i391, align 4
  %arrayidx.i392 = getelementptr i8, ptr %47, i32 5
  %48 = ptrtoint ptr %arrayidx.i392 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv114, ptr %arrayidx.i392, align 1
  %49 = load ptr, ptr %duxbuf.i391, align 4
  %arrayidx3.i393 = getelementptr i8, ptr %49, i32 13
  %50 = ptrtoint ptr %arrayidx3.i393 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %arrayidx3.i393, align 1
  %51 = load ptr, ptr %duxbuf.i391, align 4
  %arrayidx6.i394 = getelementptr i8, ptr %51, i32 21
  %52 = ptrtoint ptr %arrayidx6.i394 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %33, ptr %arrayidx6.i394, align 1
  %53 = load ptr, ptr %duxbuf.i391, align 4
  %arrayidx9.i395 = getelementptr i8, ptr %53, i32 29
  %54 = ptrtoint ptr %arrayidx9.i395 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx9.i395, align 1
  %55 = ptrtoint ptr %chanlist85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chanlist85, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = and i32 %58, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp120.not = icmp eq i32 %59, 0
  %.292 = select i1 %cmp120.not, i8 -1, i8 -5
  %sub126 = sub nsw i32 %sub112, %div113
  %conv127 = trunc i32 %sub126 to i8
  %conv129 = and i8 %.292, -3
  br label %sw.epilog.sink.split.sink.split

sw.bb:                                            ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %60 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chanlist, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %64 = and i32 %63, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.not = icmp eq i32 %64, 0
  %. = select i1 %cmp.not, i8 -1, i8 -5
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %65 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %66)
  %cmp4 = icmp eq i32 %66, 64
  %67 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %private, align 4
  %duxbuf.i = getelementptr inbounds %struct.usbduxfast_private, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %duxbuf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %arrayidx.i, align 1
  %72 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %72, i32 9
  %.471 = zext i1 %cmp4 to i8
  %73 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.471, ptr %arrayidx3.i, align 1
  %74 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx6.i298 = getelementptr i8, ptr %74, i32 17
  %75 = ptrtoint ptr %arrayidx6.i298 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %., ptr %arrayidx6.i298, align 1
  %76 = load ptr, ptr %duxbuf.i, align 4
  %arrayidx9.i299 = getelementptr i8, ptr %76, i32 25
  %77 = ptrtoint ptr %arrayidx9.i299 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx9.i299, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %mul)
  %cmp9 = icmp ult i32 %mul, 9000
  br i1 %cmp9, label %if.then11, label %if.else21

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %mul)
  %cmp12 = icmp ult i32 %mul, 2000
  br i1 %cmp12, label %if.then11.sw.epilog.sink.split_crit_edge, label %if.else16

if.then11.sw.epilog.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %78 = trunc i32 %div to i8
  %conv17 = add i8 %78, -1
  br label %sw.epilog.sink.split.sink.split

if.else21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sub22 = add nsw i32 %div, -1
  %div23 = sdiv i32 %sub22, 2
  %conv24 = trunc i32 %div23 to i8
  %79 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %private, align 4
  %duxbuf.i319 = getelementptr inbounds %struct.usbduxfast_private, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %duxbuf.i319 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %duxbuf.i319, align 4
  %arrayidx.i320 = getelementptr i8, ptr %82, i32 2
  %83 = ptrtoint ptr %arrayidx.i320 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv24, ptr %arrayidx.i320, align 1
  %84 = load ptr, ptr %duxbuf.i319, align 4
  %arrayidx3.i321 = getelementptr i8, ptr %84, i32 10
  %85 = ptrtoint ptr %arrayidx3.i321 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx3.i321, align 1
  %86 = load ptr, ptr %duxbuf.i319, align 4
  %arrayidx6.i322 = getelementptr i8, ptr %86, i32 18
  %87 = ptrtoint ptr %arrayidx6.i322 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %., ptr %arrayidx6.i322, align 1
  %88 = load ptr, ptr %duxbuf.i319, align 4
  %arrayidx9.i323 = getelementptr i8, ptr %88, i32 26
  %89 = ptrtoint ptr %arrayidx9.i323 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx9.i323, align 1
  %sub27 = sub nsw i32 %sub22, %div23
  %conv28 = trunc i32 %sub27 to i8
  br label %sw.epilog.sink.split.sink.split

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist33 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %90 = ptrtoint ptr %chanlist33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chanlist33, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %94 = and i32 %93, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp37.not = icmp eq i32 %94, 0
  %.290 = select i1 %cmp37.not, i8 -1, i8 -5
  %95 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %private, align 4
  %duxbuf.i337 = getelementptr inbounds %struct.usbduxfast_private, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %duxbuf.i337 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %duxbuf.i337, align 4
  %arrayidx.i338 = getelementptr i8, ptr %98, i32 1
  %99 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %arrayidx.i338, align 1
  %100 = load ptr, ptr %duxbuf.i337, align 4
  %arrayidx3.i339 = getelementptr i8, ptr %100, i32 9
  %101 = ptrtoint ptr %arrayidx3.i339 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 2, ptr %arrayidx3.i339, align 1
  %102 = load ptr, ptr %duxbuf.i337, align 4
  %arrayidx6.i340 = getelementptr i8, ptr %102, i32 17
  %103 = ptrtoint ptr %arrayidx6.i340 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %.290, ptr %arrayidx6.i340, align 1
  %104 = load ptr, ptr %duxbuf.i337, align 4
  %arrayidx9.i341 = getelementptr i8, ptr %104, i32 25
  %105 = ptrtoint ptr %arrayidx9.i341 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx9.i341, align 1
  %sub43 = add nsw i32 %div, -1
  %106 = ptrtoint ptr %chanlist33 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %chanlist33, align 4
  %arrayidx45 = getelementptr i32, ptr %107, i32 1
  %108 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx45, align 4
  %110 = and i32 %109, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp48.not = icmp eq i32 %110, 0
  %rngmask.2 = select i1 %cmp48.not, i8 -1, i8 -5
  %div53 = sdiv i32 %sub43, 2
  %conv54 = trunc i32 %div53 to i8
  %conv56 = and i8 %rngmask.2, -2
  %111 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %private, align 4
  %duxbuf.i343 = getelementptr inbounds %struct.usbduxfast_private, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %duxbuf.i343 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %duxbuf.i343, align 4
  %arrayidx.i344 = getelementptr i8, ptr %114, i32 2
  %115 = ptrtoint ptr %arrayidx.i344 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv54, ptr %arrayidx.i344, align 1
  %116 = load ptr, ptr %duxbuf.i343, align 4
  %arrayidx3.i345 = getelementptr i8, ptr %116, i32 10
  %117 = ptrtoint ptr %arrayidx3.i345 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx3.i345, align 1
  %118 = load ptr, ptr %duxbuf.i343, align 4
  %arrayidx6.i346 = getelementptr i8, ptr %118, i32 18
  %119 = ptrtoint ptr %arrayidx6.i346 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv56, ptr %arrayidx6.i346, align 1
  %120 = load ptr, ptr %duxbuf.i343, align 4
  %arrayidx9.i347 = getelementptr i8, ptr %120, i32 26
  %121 = ptrtoint ptr %arrayidx9.i347 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx9.i347, align 1
  %sub58 = sub nsw i32 %sub43, %div53
  %conv59 = trunc i32 %sub58 to i8
  %122 = load ptr, ptr %private, align 4
  %duxbuf.i349 = getelementptr inbounds %struct.usbduxfast_private, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %duxbuf.i349 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %duxbuf.i349, align 4
  %arrayidx.i350 = getelementptr i8, ptr %124, i32 3
  %125 = ptrtoint ptr %arrayidx.i350 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv59, ptr %arrayidx.i350, align 1
  %126 = load ptr, ptr %duxbuf.i349, align 4
  %arrayidx3.i351 = getelementptr i8, ptr %126, i32 11
  %127 = ptrtoint ptr %arrayidx3.i351 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %arrayidx3.i351, align 1
  %128 = load ptr, ptr %duxbuf.i349, align 4
  %arrayidx6.i352 = getelementptr i8, ptr %128, i32 19
  %129 = ptrtoint ptr %arrayidx6.i352 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %rngmask.2, ptr %arrayidx6.i352, align 1
  %130 = load ptr, ptr %duxbuf.i349, align 4
  %arrayidx9.i353 = getelementptr i8, ptr %130, i32 27
  %131 = ptrtoint ptr %arrayidx9.i353 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx9.i353, align 1
  %132 = load ptr, ptr %private, align 4
  %duxbuf.i355 = getelementptr inbounds %struct.usbduxfast_private, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %duxbuf.i355 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %duxbuf.i355, align 4
  %arrayidx.i356 = getelementptr i8, ptr %134, i32 4
  %135 = ptrtoint ptr %arrayidx.i356 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %arrayidx.i356, align 1
  %136 = load ptr, ptr %duxbuf.i355, align 4
  %arrayidx3.i357 = getelementptr i8, ptr %136, i32 12
  %137 = ptrtoint ptr %arrayidx3.i357 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 2, ptr %arrayidx3.i357, align 1
  %138 = load ptr, ptr %duxbuf.i355, align 4
  %arrayidx6.i358 = getelementptr i8, ptr %138, i32 20
  %139 = ptrtoint ptr %arrayidx6.i358 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %rngmask.2, ptr %arrayidx6.i358, align 1
  %140 = load ptr, ptr %duxbuf.i355, align 4
  %arrayidx9.i359 = getelementptr i8, ptr %140, i32 28
  %141 = ptrtoint ptr %arrayidx9.i359 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %arrayidx9.i359, align 1
  %sub62 = add nsw i32 %div, -2
  %142 = ptrtoint ptr %chanlist33 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chanlist33, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %146 = and i32 %145, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp67.not = icmp eq i32 %146, 0
  %rngmask.3 = select i1 %cmp67.not, i8 -1, i8 -5
  %div72 = sdiv i32 %sub62, 2
  %conv73 = trunc i32 %div72 to i8
  %conv75 = and i8 %rngmask.3, -3
  %147 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %private, align 4
  %duxbuf.i361 = getelementptr inbounds %struct.usbduxfast_private, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %duxbuf.i361 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %duxbuf.i361, align 4
  %arrayidx.i362 = getelementptr i8, ptr %150, i32 5
  %151 = ptrtoint ptr %arrayidx.i362 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv73, ptr %arrayidx.i362, align 1
  %152 = load ptr, ptr %duxbuf.i361, align 4
  %arrayidx3.i363 = getelementptr i8, ptr %152, i32 13
  %153 = ptrtoint ptr %arrayidx3.i363 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %arrayidx3.i363, align 1
  %154 = load ptr, ptr %duxbuf.i361, align 4
  %arrayidx6.i364 = getelementptr i8, ptr %154, i32 21
  %155 = ptrtoint ptr %arrayidx6.i364 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv75, ptr %arrayidx6.i364, align 1
  %156 = load ptr, ptr %duxbuf.i361, align 4
  %arrayidx9.i365 = getelementptr i8, ptr %156, i32 29
  %157 = ptrtoint ptr %arrayidx9.i365 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %arrayidx9.i365, align 1
  %sub77 = sub nsw i32 %sub62, %div72
  %conv78 = trunc i32 %sub77 to i8
  br label %sw.epilog.sink.split.sink.split

sw.bb131:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist132 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %158 = ptrtoint ptr %chanlist132 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %chanlist132, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  %162 = and i32 %161, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp136.not = icmp eq i32 %162, 0
  %.293 = select i1 %cmp136.not, i8 -1, i8 -5
  %start_src141 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %163 = ptrtoint ptr %start_src141 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %start_src141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %164)
  %cmp142 = icmp eq i32 %164, 64
  %conv146 = and i8 %.293, -3
  %165 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %private, align 4
  %duxbuf.i409 = getelementptr inbounds %struct.usbduxfast_private, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %duxbuf.i409 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %duxbuf.i409, align 4
  %arrayidx.i410 = getelementptr i8, ptr %168, i32 1
  %.472 = select i1 %cmp142, i8 1, i8 -1
  %.473 = zext i1 %cmp142 to i8
  %169 = ptrtoint ptr %arrayidx.i410 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %.472, ptr %arrayidx.i410, align 1
  %170 = load ptr, ptr %duxbuf.i409, align 4
  %arrayidx3.i417 = getelementptr i8, ptr %170, i32 9
  %171 = ptrtoint ptr %arrayidx3.i417 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %.473, ptr %arrayidx3.i417, align 1
  %172 = load ptr, ptr %duxbuf.i409, align 4
  %arrayidx6.i418 = getelementptr i8, ptr %172, i32 17
  %173 = ptrtoint ptr %arrayidx6.i418 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv146, ptr %arrayidx6.i418, align 1
  %174 = load ptr, ptr %duxbuf.i409, align 4
  %arrayidx9.i419 = getelementptr i8, ptr %174, i32 25
  %175 = ptrtoint ptr %arrayidx9.i419 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %arrayidx9.i419, align 1
  %176 = load ptr, ptr %private, align 4
  %duxbuf.i421 = getelementptr inbounds %struct.usbduxfast_private, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %duxbuf.i421 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %duxbuf.i421, align 4
  %arrayidx.i422 = getelementptr i8, ptr %178, i32 2
  %179 = ptrtoint ptr %arrayidx.i422 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %arrayidx.i422, align 1
  %180 = load ptr, ptr %duxbuf.i421, align 4
  %arrayidx3.i423 = getelementptr i8, ptr %180, i32 10
  %181 = ptrtoint ptr %arrayidx3.i423 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 2, ptr %arrayidx3.i423, align 1
  %182 = load ptr, ptr %duxbuf.i421, align 4
  %arrayidx6.i424 = getelementptr i8, ptr %182, i32 18
  %183 = ptrtoint ptr %arrayidx6.i424 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %.293, ptr %arrayidx6.i424, align 1
  %184 = load ptr, ptr %duxbuf.i421, align 4
  %arrayidx9.i425 = getelementptr i8, ptr %184, i32 26
  %185 = ptrtoint ptr %arrayidx9.i425 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %arrayidx9.i425, align 1
  %sub152 = add nsw i32 %div, -2
  %div153 = sdiv i32 %sub152, 2
  %conv154 = trunc i32 %div153 to i8
  %conv156 = and i8 %.293, -2
  %186 = load ptr, ptr %private, align 4
  %duxbuf.i427 = getelementptr inbounds %struct.usbduxfast_private, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %duxbuf.i427 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %duxbuf.i427, align 4
  %arrayidx.i428 = getelementptr i8, ptr %188, i32 3
  %189 = ptrtoint ptr %arrayidx.i428 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv154, ptr %arrayidx.i428, align 1
  %190 = load ptr, ptr %duxbuf.i427, align 4
  %arrayidx3.i429 = getelementptr i8, ptr %190, i32 11
  %191 = ptrtoint ptr %arrayidx3.i429 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx3.i429, align 1
  %192 = load ptr, ptr %duxbuf.i427, align 4
  %arrayidx6.i430 = getelementptr i8, ptr %192, i32 19
  %193 = ptrtoint ptr %arrayidx6.i430 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv156, ptr %arrayidx6.i430, align 1
  %194 = load ptr, ptr %duxbuf.i427, align 4
  %arrayidx9.i431 = getelementptr i8, ptr %194, i32 27
  %195 = ptrtoint ptr %arrayidx9.i431 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx9.i431, align 1
  %sub158 = sub nsw i32 %sub152, %div153
  %conv159 = trunc i32 %sub158 to i8
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb131, %sw.bb32, %if.else21, %if.else16, %for.cond.preheader
  %.sink481 = phi i32 [ 6, %sw.bb32 ], [ 6, %for.cond.preheader ], [ 4, %sw.bb131 ], [ 2, %if.else16 ], [ 3, %if.else21 ]
  %conv78.sink = phi i8 [ %conv78, %sw.bb32 ], [ %conv127, %for.cond.preheader ], [ %conv159, %sw.bb131 ], [ %conv17, %if.else16 ], [ %conv28, %if.else21 ]
  %.sink478 = phi i32 [ 14, %sw.bb32 ], [ 14, %for.cond.preheader ], [ 12, %sw.bb131 ], [ 10, %if.else16 ], [ 11, %if.else21 ]
  %.sink = phi i8 [ 0, %sw.bb32 ], [ 0, %for.cond.preheader ], [ 0, %sw.bb131 ], [ 2, %if.else16 ], [ 0, %if.else21 ]
  %.sink475 = phi i32 [ 22, %sw.bb32 ], [ 22, %for.cond.preheader ], [ 20, %sw.bb131 ], [ 18, %if.else16 ], [ 19, %if.else21 ]
  %rngmask.3.sink = phi i8 [ %rngmask.3, %sw.bb32 ], [ %conv129, %for.cond.preheader ], [ %.293, %sw.bb131 ], [ %., %if.else16 ], [ %., %if.else21 ]
  %.sink474 = phi i32 [ 30, %sw.bb32 ], [ 30, %for.cond.preheader ], [ 28, %sw.bb131 ], [ 26, %if.else16 ], [ 27, %if.else21 ]
  %.sink469.ph = phi i32 [ 7, %sw.bb32 ], [ 7, %for.cond.preheader ], [ 5, %sw.bb131 ], [ 3, %if.else16 ], [ 4, %if.else21 ]
  %.sink467.ph = phi i8 [ 1, %sw.bb32 ], [ 1, %for.cond.preheader ], [ 9, %sw.bb131 ], [ 9, %if.else16 ], [ 9, %if.else21 ]
  %.sink465.ph = phi i32 [ 15, %sw.bb32 ], [ 15, %for.cond.preheader ], [ 13, %sw.bb131 ], [ 11, %if.else16 ], [ 12, %if.else21 ]
  %.sink463.ph = phi i8 [ 0, %sw.bb32 ], [ 0, %for.cond.preheader ], [ 1, %sw.bb131 ], [ 1, %if.else16 ], [ 3, %if.else21 ]
  %.sink461.ph = phi i32 [ 23, %sw.bb32 ], [ 23, %for.cond.preheader ], [ 21, %sw.bb131 ], [ 19, %if.else16 ], [ 20, %if.else21 ]
  %..sink.ph = phi i8 [ %rngmask.3, %sw.bb32 ], [ %.292, %for.cond.preheader ], [ %.293, %sw.bb131 ], [ %., %if.else16 ], [ %., %if.else21 ]
  %.sink459.ph = phi i32 [ 31, %sw.bb32 ], [ 31, %for.cond.preheader ], [ 29, %sw.bb131 ], [ 27, %if.else16 ], [ 28, %if.else21 ]
  %.sink457.ph = phi i8 [ 0, %sw.bb32 ], [ 0, %for.cond.preheader ], [ -1, %sw.bb131 ], [ -1, %if.else16 ], [ -1, %if.else21 ]
  %196 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %private, align 4
  %duxbuf.i325 = getelementptr inbounds %struct.usbduxfast_private, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %duxbuf.i325 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %duxbuf.i325, align 4
  %arrayidx.i368 = getelementptr i8, ptr %199, i32 %.sink481
  %200 = ptrtoint ptr %arrayidx.i368 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv78.sink, ptr %arrayidx.i368, align 1
  %201 = load ptr, ptr %duxbuf.i325, align 4
  %arrayidx3.i369 = getelementptr i8, ptr %201, i32 %.sink478
  %202 = ptrtoint ptr %arrayidx3.i369 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %.sink, ptr %arrayidx3.i369, align 1
  %203 = load ptr, ptr %duxbuf.i325, align 4
  %arrayidx6.i370 = getelementptr i8, ptr %203, i32 %.sink475
  %204 = ptrtoint ptr %arrayidx6.i370 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %rngmask.3.sink, ptr %arrayidx6.i370, align 1
  %205 = load ptr, ptr %duxbuf.i325, align 4
  %arrayidx9.i371 = getelementptr i8, ptr %205, i32 %.sink474
  %206 = ptrtoint ptr %arrayidx9.i371 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %arrayidx9.i371, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.then11.sw.epilog.sink.split_crit_edge
  %.sink469 = phi i32 [ 2, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink469.ph, %sw.epilog.sink.split.sink.split ]
  %.sink467 = phi i8 [ -119, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink467.ph, %sw.epilog.sink.split.sink.split ]
  %.sink465 = phi i32 [ 10, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink465.ph, %sw.epilog.sink.split.sink.split ]
  %.sink463 = phi i8 [ 3, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink463.ph, %sw.epilog.sink.split.sink.split ]
  %.sink461 = phi i32 [ 18, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink461.ph, %sw.epilog.sink.split.sink.split ]
  %..sink = phi i8 [ %., %if.then11.sw.epilog.sink.split_crit_edge ], [ %..sink.ph, %sw.epilog.sink.split.sink.split ]
  %.sink459 = phi i32 [ 26, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink459.ph, %sw.epilog.sink.split.sink.split ]
  %.sink457 = phi i8 [ -1, %if.then11.sw.epilog.sink.split_crit_edge ], [ %.sink457.ph, %sw.epilog.sink.split.sink.split ]
  %207 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %private, align 4
  %duxbuf.i373 = getelementptr inbounds %struct.usbduxfast_private, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %duxbuf.i373 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %duxbuf.i373, align 4
  %arrayidx.i332 = getelementptr i8, ptr %210, i32 %.sink469
  %211 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %.sink467, ptr %arrayidx.i332, align 1
  %212 = load ptr, ptr %duxbuf.i373, align 4
  %arrayidx3.i333 = getelementptr i8, ptr %212, i32 %.sink465
  %213 = ptrtoint ptr %arrayidx3.i333 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %.sink463, ptr %arrayidx3.i333, align 1
  %214 = load ptr, ptr %duxbuf.i373, align 4
  %arrayidx6.i334 = getelementptr i8, ptr %214, i32 %.sink461
  %215 = ptrtoint ptr %arrayidx6.i334 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %..sink, ptr %arrayidx6.i334, align 1
  %216 = load ptr, ptr %duxbuf.i373, align 4
  %arrayidx9.i335 = getelementptr i8, ptr %216, i32 %.sink459
  %217 = ptrtoint ptr %arrayidx9.i335 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %.sink457, ptr %arrayidx9.i335, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %218 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #7
  %220 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %nsent.i, align 4, !annotation !124
  %duxbuf.i445 = getelementptr inbounds %struct.usbduxfast_private, ptr %219, i32 0, i32 1
  %221 = ptrtoint ptr %duxbuf.i445 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %duxbuf.i445, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %222, align 1
  %224 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %225, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %226 = load ptr, ptr %duxbuf.i445, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %226, i32 noundef 256, ptr noundef nonnull %nsent.i, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %usbduxfast_send_cmd.exit.thread, label %if.end165

usbduxfast_send_cmd.exit.thread:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %227 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.34, i32 noundef %call3.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #7
  br label %cmd_exit

if.end165:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #7
  %start_src166 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %229 = ptrtoint ptr %start_src166 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %start_src166, align 4
  %231 = zext i32 %230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %230, label %if.else181 [
    i32 2, label %if.end165.if.then172_crit_edge
    i32 64, label %if.end165.if.then172_crit_edge484
  ]

if.end165.if.then172_crit_edge484:                ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then172

if.end165.if.then172_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then172

if.then172:                                       ; preds = %if.end165.if.then172_crit_edge, %if.end165.if.then172_crit_edge484
  %232 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %ai_cmd_running, align 4
  %call.i446 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %233 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %private, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %237 = ptrtoint ptr %call.i446 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %call.i446, align 8
  %shl.i.i448 = shl i32 %238, 8
  %or2.i = or i32 %shl.i.i448, -1073545088
  %inbuf.i = getelementptr inbounds %struct.usbduxfast_private, ptr %234, i32 0, i32 2
  %239 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %inbuf.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 8
  %241 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i446, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 10
  %242 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or2.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 14
  %243 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %240, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 19
  %244 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 28
  %245 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @usbduxfast_ai_interrupt, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %236, i32 0, i32 27
  %246 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %dev, ptr %context4.i.i, align 4
  %247 = load ptr, ptr %234, align 4
  %call4.i = call i32 @usb_submit_urb(ptr noundef %247, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then172.if.end179_crit_edge, label %usbduxfast_submit_urb.exit

if.then172.if.end179_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

usbduxfast_submit_urb.exit:                       ; preds = %if.then172
  %class_dev.i449 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %248 = ptrtoint ptr %class_dev.i449 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %class_dev.i449, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.44, i32 noundef %call4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp175 = icmp slt i32 %call4.i, 0
  br i1 %cmp175, label %if.then177, label %usbduxfast_submit_urb.exit.if.end179_crit_edge

usbduxfast_submit_urb.exit.if.end179_crit_edge:   ; preds = %usbduxfast_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then177:                                       ; preds = %usbduxfast_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %250 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %ai_cmd_running, align 4
  br label %cmd_exit

if.end179:                                        ; preds = %usbduxfast_submit_urb.exit.if.end179_crit_edge, %if.then172.if.end179_crit_edge
  %251 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %252, i32 0, i32 20
  %253 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %inttrig, align 4
  br label %cmd_exit

if.else181:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %async, align 4
  %inttrig183 = getelementptr inbounds %struct.comedi_async, ptr %255, i32 0, i32 20
  %256 = ptrtoint ptr %inttrig183 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @usbduxfast_ai_inttrig, ptr %inttrig183, align 4
  br label %cmd_exit

cmd_exit:                                         ; preds = %if.else181, %if.end179, %if.then177, %usbduxfast_send_cmd.exit.thread, %entry.cmd_exit_crit_edge
  %ret.0 = phi i32 [ %call4.i, %if.then177 ], [ %call4.i, %if.end179 ], [ %call3.i, %if.else181 ], [ -16, %entry.cmd_exit_crit_edge ], [ %call3.i, %usbduxfast_send_cmd.exit.thread ]
  call void @mutex_unlock(ptr noundef %mut) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #7
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %ai_cmd_running.i = getelementptr inbounds %struct.usbduxfast_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ai_cmd_running.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %entry.usbduxfast_ai_stop.exit_crit_edge, label %if.then.i

entry.usbduxfast_ai_stop.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usbduxfast_ai_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %6) #7
  br label %usbduxfast_ai_stop.exit

usbduxfast_ai_stop.exit:                          ; preds = %if.then.i, %entry.usbduxfast_ai_stop.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mut) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_ai_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbduxfast_private, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #7
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then2, label %do.end12

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %ai_cmd_running, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %14, 8
  %or2.i = or i32 %shl.i.i, -1073545088
  %inbuf.i = getelementptr inbounds %struct.usbduxfast_private, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inbuf.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or2.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @usbduxfast_ai_interrupt, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %context4.i.i, align 4
  %23 = load ptr, ptr %10, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then2.if.end8_crit_edge, label %usbduxfast_submit_urb.exit

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

usbduxfast_submit_urb.exit:                       ; preds = %if.then2
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %24 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.44, i32 noundef %call4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp4 = icmp slt i32 %call4.i, 0
  br i1 %cmp4, label %do.end, label %usbduxfast_submit_urb.exit.if.end8_crit_edge

usbduxfast_submit_urb.exit.if.end8_crit_edge:     ; preds = %usbduxfast_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %usbduxfast_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %call4.i) #10
  %28 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %ai_cmd_running, align 4
  br label %cleanup.sink.split

if.end8:                                          ; preds = %usbduxfast_submit_urb.exit.if.end8_crit_edge, %if.then2.if.end8_crit_edge
  %29 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup.sink.split

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev13 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %class_dev13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.53) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end12, %if.end8, %do.end
  %retval.0.ph = phi i32 [ %call4.i, %do.end ], [ 1, %do.end12 ], [ 1, %if.end8 ]
  tail call void @mutex_unlock(ptr noundef %mut) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxfast_ai_interrupt(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %ai_cmd_running = getelementptr inbounds %struct.usbduxfast_private, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %11, label %do.end [
    i32 0, label %sw.bb
    i32 -104, label %if.end.sw.bb2_crit_edge
    i32 -2, label %if.end.sw.bb2_crit_edge27
    i32 -108, label %if.end.sw.bb2_crit_edge28
    i32 -103, label %if.end.sw.bb2_crit_edge29
  ]

if.end.sw.bb2_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.bb:                                            ; preds = %if.end
  %ignore.i = getelementptr inbounds %struct.usbduxfast_private, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %ignore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ignore.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %14, -1
  %15 = ptrtoint ptr %ignore.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec.i, ptr %ignore.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %sw.bb
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %16 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %17, %cond.i.i.i
  %call4.i = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %shr.i.i) #7
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer.i, align 4
  %call5.i = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %21, i32 noundef %call4.i) #7
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %22 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp.i = icmp eq i32 %23, 32
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %26 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp6.not.i = icmp ult i32 %25, %27
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %28 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %events.i, align 4
  %or.i = or i32 %29, 2
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %land.lhs.true.i.if.end8.i_crit_edge, %if.else.i.if.end8.i_crit_edge, %if.then.i
  %events9.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %30 = ptrtoint ptr %events9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %events9.i, align 4
  %and.i = and i32 %31, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = tail call ptr @comedi_to_usb_dev(ptr noundef %1) #7
  %dev13.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %32 = ptrtoint ptr %dev13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call12.i, ptr %dev13.i, align 4
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %status, align 4
  %call14.i = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end.i, label %if.then11.i.sw.epilog_crit_edge

if.then11.i.sw.epilog_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.48, i32 noundef %call14.i) #10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge27, %if.end.sw.bb2_crit_edge28, %if.end.sw.bb2_crit_edge29
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.46, i32 noundef %11) #10
  %events4 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end, %sw.bb2, %do.end.i
  %events9.i.sink26 = phi ptr [ %events9.i, %do.end.i ], [ %events4, %do.end ], [ %events, %sw.bb2 ]
  %38 = ptrtoint ptr %events9.i.sink26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %events9.i.sink26, align 4
  %or18.i = or i32 %39, 16
  store i32 %or18.i, ptr %events9.i.sink26, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then11.i.sw.epilog_crit_edge, %if.end8.i.sw.epilog_crit_edge
  %events6 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %40 = ptrtoint ptr %events6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %events6, align 4
  %and = and i32 %41, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %sw.epilog.if.end9_crit_edge, label %if.then8

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  %ai_cmd_running.i = getelementptr inbounds %struct.usbduxfast_private, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %ai_cmd_running.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.epilog.if.end9_crit_edge
  tail call void @comedi_event(ptr noundef %1, ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbduxfast_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @usbduxfast_driver, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_usbduxfast__239_1034_usbduxfast_driver_init6, !1, !"__initcall__kmod_usbduxfast__239_1034_usbduxfast_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1034, i32 1}
!2 = !{ptr @__exitcall_usbduxfast_driver_exit, !1, !"__exitcall_usbduxfast_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1036, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1037, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1038, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware244, !11, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1039, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1008, i32 17}
!14 = !{ptr @usbduxfast_driver, !15, !"usbduxfast_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1007, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 922, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @usbduxfast_auto_attach._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @usbduxfast_auto_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @usbduxfast_auto_attach.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 931, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 941, i32 3}
!29 = !{ptr @usbduxfast_auto_attach._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @usbduxfast_auto_attach._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 954, i32 45}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 854, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usbduxfast_upload_firmware._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @usbduxfast_upload_firmware._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 879, i32 3}
!40 = !{ptr @usbduxfast_upload_firmware._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @usbduxfast_upload_firmware._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 891, i32 3}
!44 = !{ptr @usbduxfast_upload_firmware._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usbduxfast_upload_firmware._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 904, i32 3}
!48 = !{ptr @usbduxfast_upload_firmware._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @usbduxfast_upload_firmware._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @range_usbduxfast_ai_range, !51, !"range_usbduxfast_ai_range", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 136, i32 35}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 776, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @usbduxfast_ai_insn_read._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @usbduxfast_ai_insn_read._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 809, i32 4}
!59 = !{ptr @usbduxfast_ai_insn_read._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @usbduxfast_ai_insn_read._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 820, i32 4}
!63 = !{ptr @usbduxfast_ai_insn_read._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @usbduxfast_ai_insn_read._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 826, i32 4}
!67 = !{ptr @usbduxfast_ai_insn_read._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @usbduxfast_ai_insn_read._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 177, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @usbduxfast_send_cmd._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @usbduxfast_send_cmd._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 327, i32 3}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @usbduxfast_ai_check_chanlist._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @usbduxfast_ai_check_chanlist._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 336, i32 4}
!81 = !{ptr @usbduxfast_ai_check_chanlist._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @usbduxfast_ai_check_chanlist._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 341, i32 4}
!85 = !{ptr @usbduxfast_ai_check_chanlist._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @usbduxfast_ai_check_chanlist._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 313, i32 3}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @usbduxfast_submit_urb._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @usbduxfast_submit_urb._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 284, i32 3}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @usbduxfast_ai_interrupt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @usbduxfast_ai_interrupt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 252, i32 4}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @usbduxfast_ai_handle_urb._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @usbduxfast_ai_handle_urb._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 451, i32 4}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @usbduxfast_ai_inttrig._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @usbduxfast_ai_inttrig._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 458, i32 3}
!109 = !{ptr @usbduxfast_ai_inttrig._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @usbduxfast_ai_inttrig._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @usbduxfast_usb_driver, !112, !"usbduxfast_usb_driver", i1 false, i1 false}
!112 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1028, i32 26}
!113 = !{ptr @usbduxfast_usb_table, !114, !"usbduxfast_usb_table", i1 false, i1 false}
!114 = !{!"../drivers/comedi/drivers/usbduxfast.c", i32 1020, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i32 0, i32 33}
