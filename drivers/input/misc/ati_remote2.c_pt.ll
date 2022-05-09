; ModuleID = '/llk/IR_all_yes/drivers/input/misc/ati_remote2.c_pt.bc'
source_filename = "../drivers/input/misc/ati_remote2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.70 = type { i8, i16 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ati_remote2 = type { ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x i32], i32, i32, [64 x i8], [64 x i8], [5 x [46 x i16]], i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }

@__UNIQUE_ID_description232 = internal constant [57 x i8] c"ati_remote2.description=ATI/Philips USB RF remote driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [50 x i8] c"ati_remote2.author=Ville Syrjala <syrjala@sci.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [48 x i8] c"ati_remote2.file=drivers/input/misc/ati_remote2\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"ati_remote2.license=GPL\00", section ".modinfo", align 1
@__param_str_channel_mask = internal constant [25 x i8] c"ati_remote2.channel_mask\00", align 1
@param_ops_channel_mask = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ati_remote2_set_channel_mask, ptr @ati_remote2_get_channel_mask, ptr null }, [16 x i8] zeroinitializer }, align 32
@channel_mask = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_channel_mask = internal constant %struct.kernel_param { ptr @__param_str_channel_mask, ptr null, ptr @param_ops_channel_mask, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @channel_mask } }, section "__param", align 4
@__UNIQUE_ID_channel_masktype240 = internal constant [47 x i8] c"ati_remote2.parmtype=channel_mask:channel_mask\00", section ".modinfo", align 1
@__UNIQUE_ID_channel_mask241 = internal constant [102 x i8] c"ati_remote2.parm=channel_mask:Bitmask of channels to accept <15:Channel16>...<1:Channel2><0:Channel1>\00", section ".modinfo", align 1
@__param_str_mode_mask = internal constant [22 x i8] c"ati_remote2.mode_mask\00", align 1
@param_ops_mode_mask = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ati_remote2_set_mode_mask, ptr @ati_remote2_get_mode_mask, ptr null }, [16 x i8] zeroinitializer }, align 32
@mode_mask = internal global { i32, [28 x i8] } { i32 31, [28 x i8] zeroinitializer }, align 32
@__param_mode_mask = internal constant %struct.kernel_param { ptr @__param_str_mode_mask, ptr null, ptr @param_ops_mode_mask, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @mode_mask } }, section "__param", align 4
@__UNIQUE_ID_mode_masktype242 = internal constant [41 x i8] c"ati_remote2.parmtype=mode_mask:mode_mask\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_mask243 = internal constant [93 x i8] c"ati_remote2.parm=mode_mask:Bitmask of modes to accept <4:PC><3:AUX4><2:AUX3><1:AUX2><0:AUX1>\00", section ".modinfo", align 1
@__initcall__kmod_ati_remote2__253_1035_ati_remote2_driver_init6 = internal global ptr @ati_remote2_driver_init, section ".initcall6.init", align 4
@ati_remote2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ati_remote2_probe, ptr @ati_remote2_disconnect, ptr null, ptr @ati_remote2_suspend, ptr @ati_remote2_resume, ptr @ati_remote2_reset_resume, ptr @ati_remote2_pre_reset, ptr @ati_remote2_post_reset, ptr @ati_remote2_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ati_remote2_driver_exit = internal global ptr @ati_remote2_driver_exit, section ".exitcall.exit", align 4
@ati_remote2_set_channel_mask.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ati_remote2\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ati_remote2_set_channel_mask\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/misc/ati_remote2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@ati_remote2_get_channel_mask.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ati_remote2_get_channel_mask\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@ati_remote2_set_mode_mask.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ati_remote2_set_mode_mask\00", [38 x i8] zeroinitializer }, align 32
@ati_remote2_get_mode_mask.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ati_remote2_get_mode_mask\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@ati_remote2_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1137, i16 1538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ati_remote2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 818, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): interface 0 must have an endpoint\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ati_remote2_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ati_remote2_probe._entry_ptr = internal global ptr @ati_remote2_probe._entry, section ".printk_index", align 4
@ati_remote2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 829, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): need 2 interfaces, found %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ati_remote2_probe._entry_ptr.15 = internal global ptr @ati_remote2_probe._entry.13, section ".printk_index", align 4
@ati_remote2_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 842, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): interface 1 must have an endpoint\0A\00", [55 x i8] zeroinitializer }, align 32
@ati_remote2_probe._entry_ptr.18 = internal global ptr @ati_remote2_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ATI Remote Wonder II\00", [43 x i8] zeroinitializer }, align 32
@ati_remote2_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ati_remote2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ati_remote2_complete_key.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ati_remote2_complete_key\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): urb status = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ati_remote2_complete_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.22, ptr @.str.2, i32 472, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ati_remote2_complete_key._entry_ptr = internal global ptr @ati_remote2_complete_key._entry, section ".printk_index", align 4
@ati_remote2_complete_key._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 478, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): usb_submit_urb() = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ati_remote2_complete_key._entry_ptr.26 = internal global ptr @ati_remote2_complete_key._entry.24, section ".printk_index", align 4
@ati_remote2_input_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 363, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown mode byte (%02x %02x %02x %02x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ati_remote2_input_key\00", [42 x i8] zeroinitializer }, align 32
@ati_remote2_input_key._entry_ptr = internal global ptr @ati_remote2_input_key._entry, section ".printk_index", align 4
@ati_remote2_input_key._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 390, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown code byte (%02x %02x %02x %02x)\0A\00", [55 x i8] zeroinitializer }, align 32
@ati_remote2_input_key._entry_ptr.31 = internal global ptr @ati_remote2_input_key._entry.29, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ati_remote2_input_key._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 415, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unknown state byte (%02x %02x %02x %02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@ati_remote2_input_key._entry_ptr.34 = internal global ptr @ati_remote2_input_key._entry.32, section ".printk_index", align 4
@ati_remote2_key_table = internal constant { [46 x %struct.anon.70], [40 x i8] } { [46 x %struct.anon.70] [%struct.anon.70 { i8 0, i16 11 }, %struct.anon.70 { i8 1, i16 2 }, %struct.anon.70 { i8 2, i16 3 }, %struct.anon.70 { i8 3, i16 4 }, %struct.anon.70 { i8 4, i16 5 }, %struct.anon.70 { i8 5, i16 6 }, %struct.anon.70 { i8 6, i16 7 }, %struct.anon.70 { i8 7, i16 8 }, %struct.anon.70 { i8 8, i16 9 }, %struct.anon.70 { i8 9, i16 10 }, %struct.anon.70 { i8 12, i16 116 }, %struct.anon.70 { i8 13, i16 113 }, %struct.anon.70 { i8 16, i16 115 }, %struct.anon.70 { i8 17, i16 114 }, %struct.anon.70 { i8 32, i16 402 }, %struct.anon.70 { i8 33, i16 403 }, %struct.anon.70 { i8 40, i16 159 }, %struct.anon.70 { i8 41, i16 168 }, %struct.anon.70 { i8 44, i16 207 }, %struct.anon.70 { i8 48, i16 119 }, %struct.anon.70 { i8 49, i16 128 }, %struct.anon.70 { i8 55, i16 167 }, %struct.anon.70 { i8 56, i16 389 }, %struct.anon.70 { i8 57, i16 377 }, %struct.anon.70 { i8 63, i16 148 }, %struct.anon.70 { i8 84, i16 139 }, %struct.anon.70 { i8 88, i16 103 }, %struct.anon.70 { i8 89, i16 108 }, %struct.anon.70 { i8 90, i16 105 }, %struct.anon.70 { i8 91, i16 106 }, %struct.anon.70 { i8 92, i16 352 }, %struct.anon.70 { i8 120, i16 30 }, %struct.anon.70 { i8 121, i16 48 }, %struct.anon.70 { i8 122, i16 46 }, %struct.anon.70 { i8 123, i16 32 }, %struct.anon.70 { i8 124, i16 18 }, %struct.anon.70 { i8 125, i16 33 }, %struct.anon.70 { i8 -126, i16 28 }, %struct.anon.70 { i8 -114, i16 360 }, %struct.anon.70 { i8 -106, i16 152 }, %struct.anon.70 { i8 -87, i16 272 }, %struct.anon.70 { i8 -86, i16 273 }, %struct.anon.70 { i8 -66, i16 214 }, %struct.anon.70 { i8 -48, i16 176 }, %struct.anon.70 { i8 -43, i16 132 }, %struct.anon.70 { i8 -7, i16 358 }], [40 x i8] zeroinitializer }, align 32
@ati_remote2_complete_mouse.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.23, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ati_remote2_complete_mouse\00", [37 x i8] zeroinitializer }, align 32
@ati_remote2_complete_mouse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.35, ptr @.str.2, i32 443, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ati_remote2_complete_mouse._entry_ptr = internal global ptr @ati_remote2_complete_mouse._entry, section ".printk_index", align 4
@ati_remote2_complete_mouse._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.35, ptr @.str.2, i32 449, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ati_remote2_complete_mouse._entry_ptr.37 = internal global ptr @ati_remote2_complete_mouse._entry.36, section ".printk_index", align 4
@ati_remote2_input_mouse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.38, ptr @.str.2, i32 324, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ati_remote2_input_mouse\00", [40 x i8] zeroinitializer }, align 32
@ati_remote2_input_mouse._entry_ptr = internal global ptr @ati_remote2_input_mouse._entry, section ".printk_index", align 4
@ati_remote2_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 693, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - failed to set channel due to error: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ati_remote2_setup\00", [46 x i8] zeroinitializer }, align 32
@ati_remote2_setup._entry_ptr = internal global ptr @ati_remote2_setup._entry, section ".printk_index", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@ati_remote2_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_channel_mask, ptr @dev_attr_mode_mask, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_channel_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_remote2_show_channel_mask, ptr @ati_remote2_store_channel_mask }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_remote2_show_mode_mask, ptr @ati_remote2_store_mode_mask }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_mask\00", [19 x i8] zeroinitializer }, align 32
@ati_remote2_store_channel_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 731, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): usb_autopm_get_interface() = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ati_remote2_store_channel_mask\00", [33 x i8] zeroinitializer }, align 32
@ati_remote2_store_channel_mask._entry_ptr = internal global ptr @ati_remote2_store_channel_mask._entry, section ".printk_index", align 4
@ati_remote2_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ati_remote2_mutex, i64 52), ptr getelementptr (i8, ptr @ati_remote2_mutex, i64 52) }, ptr @ati_remote2_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ati_remote2_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ati_remote2_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mode_mask\00", [22 x i8] zeroinitializer }, align 32
@ati_remote2_open.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.3, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ati_remote2_open\00", [47 x i8] zeroinitializer }, align 32
@ati_remote2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.48, ptr @.str.2, i32 265, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ati_remote2_open._entry_ptr = internal global ptr @ati_remote2_open._entry, section ".printk_index", align 4
@ati_remote2_submit_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.49, ptr @.str.2, i32 235, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ati_remote2_submit_urbs\00", [40 x i8] zeroinitializer }, align 32
@ati_remote2_submit_urbs._entry_ptr = internal global ptr @ati_remote2_submit_urbs._entry, section ".printk_index", align 4
@ati_remote2_submit_urbs._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.49, ptr @.str.2, i32 242, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@ati_remote2_submit_urbs._entry_ptr.51 = internal global ptr @ati_remote2_submit_urbs._entry.50, section ".printk_index", align 4
@ati_remote2_close.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ati_remote2_close\00", [46 x i8] zeroinitializer }, align 32
@ati_remote2_suspend.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.3, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ati_remote2_suspend\00", [44 x i8] zeroinitializer }, align 32
@ati_remote2_resume.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.3, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ati_remote2_resume\00", [45 x i8] zeroinitializer }, align 32
@ati_remote2_reset_resume.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.3, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ati_remote2_reset_resume\00", [39 x i8] zeroinitializer }, align 32
@ati_remote2_pre_reset.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.3, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ati_remote2_pre_reset\00", [42 x i8] zeroinitializer }, align 32
@ati_remote2_post_reset.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.3, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ati_remote2_post_reset\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967294]
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"param_ops_channel_mask\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 92, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"channel_mask\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 90, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"param_ops_mode_mask\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 101, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"mode_mask\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 99, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"ati_remote2_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 215, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 61, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 69, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 71, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 77, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 85, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 87, i32 25 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"ati_remote2_id_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 108, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 817, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 828, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 841, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 860, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 862, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant [23 x i8] c"ati_remote2_attr_group\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 795, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 466, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 471, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 477, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 361, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 388, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 413, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"ati_remote2_key_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 133, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 437, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 442, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 448, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 322, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 692, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 912, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"ati_remote2_attrs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 789, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"dev_attr_channel_mask\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"dev_attr_mode_mask\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 783, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 730, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"ati_remote2_mutex\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 114, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 786, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 260, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 264, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 234, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 241, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 296, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 923, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 948, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 974, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1004, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [36 x i8] c"../drivers/input/misc/ati_remote2.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1025, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_channel_mask241, ptr @__UNIQUE_ID_channel_masktype240, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_mode_mask243, ptr @__UNIQUE_ID_mode_masktype242, ptr @__exitcall_ati_remote2_driver_exit, ptr @__initcall__kmod_ati_remote2__253_1035_ati_remote2_driver_init6, ptr @__param_channel_mask, ptr @__param_mode_mask, ptr @ati_remote2_complete_key._entry, ptr @ati_remote2_complete_key._entry.24, ptr @ati_remote2_complete_key._entry_ptr, ptr @ati_remote2_complete_key._entry_ptr.26, ptr @ati_remote2_complete_mouse._entry, ptr @ati_remote2_complete_mouse._entry.36, ptr @ati_remote2_complete_mouse._entry_ptr, ptr @ati_remote2_complete_mouse._entry_ptr.37, ptr @ati_remote2_driver_exit, ptr @ati_remote2_input_key._entry, ptr @ati_remote2_input_key._entry.29, ptr @ati_remote2_input_key._entry.32, ptr @ati_remote2_input_key._entry_ptr, ptr @ati_remote2_input_key._entry_ptr.31, ptr @ati_remote2_input_key._entry_ptr.34, ptr @ati_remote2_input_mouse._entry, ptr @ati_remote2_input_mouse._entry_ptr, ptr @ati_remote2_open._entry, ptr @ati_remote2_open._entry_ptr, ptr @ati_remote2_probe._entry, ptr @ati_remote2_probe._entry.13, ptr @ati_remote2_probe._entry.16, ptr @ati_remote2_probe._entry_ptr, ptr @ati_remote2_probe._entry_ptr.15, ptr @ati_remote2_probe._entry_ptr.18, ptr @ati_remote2_setup._entry, ptr @ati_remote2_setup._entry_ptr, ptr @ati_remote2_store_channel_mask._entry, ptr @ati_remote2_store_channel_mask._entry_ptr, ptr @ati_remote2_submit_urbs._entry, ptr @ati_remote2_submit_urbs._entry.50, ptr @ati_remote2_submit_urbs._entry_ptr, ptr @ati_remote2_submit_urbs._entry_ptr.51, ptr @param_ops_channel_mask, ptr @channel_mask, ptr @param_ops_mode_mask, ptr @mode_mask, ptr @ati_remote2_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ati_remote2_id_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @ati_remote2_attr_group, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @ati_remote2_key_table, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ati_remote2_attrs, ptr @dev_attr_channel_mask, ptr @dev_attr_mode_mask, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @ati_remote2_mutex, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_channel_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_mode_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_complete_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_complete_key._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_input_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_input_key._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_input_key._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_key_table to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_complete_mouse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_complete_mouse._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_input_mouse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channel_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_store_channel_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_submit_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote2_submit_urbs._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ati_remote2_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @ati_remote2_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_set_channel_mask(ptr noundef %val, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_set_channel_mask.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_set_channel_mask, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ati_remote2_set_channel_mask.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask.i, align 4, !annotation !180
  %tobool.not.i = icmp eq ptr %val, null
  br i1 %tobool.not.i, label %do.end.ati_remote2_set_mask.exit_crit_edge, label %if.end.i

do.end.ati_remote2_set_mask.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end.i:                                         ; preds = %do.end
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %val, i32 noundef 0, ptr noundef nonnull %mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ati_remote2_set_mask.exit_crit_edge

if.end.i.ati_remote2_set_mask.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %tobool4.not.i = icmp ult i32 %2, 65536
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.ati_remote2_set_mask.exit_crit_edge

if.end3.i.ati_remote2_set_mask.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %5, align 4
  br label %ati_remote2_set_mask.exit

ati_remote2_set_mask.exit:                        ; preds = %if.end6.i, %if.end3.i.ati_remote2_set_mask.exit_crit_edge, %if.end.i.ati_remote2_set_mask.exit_crit_edge, %do.end.ati_remote2_set_mask.exit_crit_edge
  %retval.0.i4 = phi i32 [ 0, %if.end6.i ], [ -22, %do.end.ati_remote2_set_mask.exit_crit_edge ], [ %call.i, %if.end.i.ati_remote2_set_mask.exit_crit_edge ], [ -22, %if.end3.i.ati_remote2_set_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  ret i32 %retval.0.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_get_channel_mask(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_get_channel_mask.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_get_channel_mask, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ati_remote2_get_channel_mask.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.5, i32 noundef %4)
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_set_mode_mask(ptr noundef %val, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_set_mode_mask.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_set_mode_mask, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ati_remote2_set_mode_mask.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask.i, align 4, !annotation !180
  %tobool.not.i = icmp eq ptr %val, null
  br i1 %tobool.not.i, label %do.end.ati_remote2_set_mask.exit_crit_edge, label %if.end.i

do.end.ati_remote2_set_mask.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end.i:                                         ; preds = %do.end
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %val, i32 noundef 0, ptr noundef nonnull %mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ati_remote2_set_mask.exit_crit_edge

if.end.i.ati_remote2_set_mask.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %tobool4.not.i = icmp ult i32 %2, 32
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.ati_remote2_set_mask.exit_crit_edge

if.end3.i.ati_remote2_set_mask.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ati_remote2_set_mask.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %5, align 4
  br label %ati_remote2_set_mask.exit

ati_remote2_set_mask.exit:                        ; preds = %if.end6.i, %if.end3.i.ati_remote2_set_mask.exit_crit_edge, %if.end.i.ati_remote2_set_mask.exit_crit_edge, %do.end.ati_remote2_set_mask.exit_crit_edge
  %retval.0.i4 = phi i32 [ 0, %if.end6.i ], [ -22, %do.end.ati_remote2_set_mask.exit_crit_edge ], [ %call.i, %if.end.i.ati_remote2_set_mask.exit_crit_edge ], [ -22, %if.end3.i.ati_remote2_set_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  ret i32 %retval.0.i4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_get_mode_mask(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_get_mode_mask.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_get_mode_mask, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ati_remote2_get_mode_mask.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.8, i32 noundef %4)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 656) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %udev5 = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %udev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %udev5, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.end4.do.end_crit_edge, label %lor.lhs.false

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %endpoint, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end4.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #13
  br label %fail1

if.end10:                                         ; preds = %lor.lhs.false
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %interface, ptr %intf, align 8
  %13 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endpoint, align 4
  %ep = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %ep, align 8
  %call15 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef 1) #9
  %arrayidx17 = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %arrayidx17, align 4
  %actconfig = getelementptr i8, ptr %1, i32 956
  %17 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp20 = icmp ult i8 %20, 2
  %tobool25.not = icmp eq ptr %call15, null
  %or.cond = select i1 %cmp20, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %do.end29, label %if.end35

do.end29:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %conv34 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef %conv34) #13
  br label %fail1

if.end35:                                         ; preds = %if.end10
  %call38 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @ati_remote2_driver, ptr noundef nonnull %call15, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.fail1_crit_edge

if.end35.fail1_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end41:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17, align 4
  %cur_altsetting44 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cur_altsetting44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_altsetting44, align 4
  %bNumEndpoints46 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %bNumEndpoints46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bNumEndpoints46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp48 = icmp eq i8 %26, 0
  br i1 %cmp48, label %if.end41.do.end56_crit_edge, label %lor.lhs.false50

if.end41.do.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

lor.lhs.false50:                                  ; preds = %if.end41
  %endpoint51 = getelementptr inbounds %struct.usb_host_interface, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %endpoint51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %endpoint51, align 4
  %tobool52.not = icmp eq ptr %28, null
  br i1 %tobool52.not, label %lor.lhs.false50.do.end56_crit_edge, label %if.end58

lor.lhs.false50.do.end56_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

do.end56:                                         ; preds = %lor.lhs.false50.do.end56_crit_edge, %if.end41.do.end56_crit_edge
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10) #13
  br label %fail2

if.end58:                                         ; preds = %lor.lhs.false50
  %arrayidx63 = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx63, align 4
  %30 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udev5, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 6, i32 0
  %call.i = tail call ptr @usb_alloc_coherent(ptr noundef %31, i32 noundef 4, i32 noundef 3264, ptr noundef %arrayidx.i) #9
  %arrayidx2.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 5, i32 0
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %arrayidx2.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end58.fail3_crit_edge, label %if.end.i

if.end58.fail3_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end.i:                                         ; preds = %if.end58
  %call5.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx6.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i, ptr %arrayidx6.i, align 8
  %tobool9.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool9.not.i, label %if.end.i.fail3_crit_edge, label %if.end11.i

if.end.i.fail3_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end11.i:                                       ; preds = %if.end.i
  %34 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep, align 8
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %39, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or14.i = or i32 %or.i.i, 1073741952
  %40 = lshr i32 %or.i.i, 15
  %and.i.i = and i32 %40, 15
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %31, i32 0, i32 21, i32 %and.i.i
  %41 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx57.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %42, null
  br i1 %tobool59.not.i.i, label %if.end11.i.usb_maxpacket.exit.thread.i_crit_edge, label %usb_maxpacket.exit.i

if.end11.i.usb_maxpacket.exit.thread.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.i:                             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %45 = and i16 %44, -249
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #9
  %47 = tail call i16 @llvm.umin.i16(i16 %46, i16 4) #9
  %spec.select.i = zext i16 %47 to i32
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.thread.i:                      ; preds = %usb_maxpacket.exit.i, %if.end11.i.usb_maxpacket.exit.thread.i_crit_edge
  %48 = phi i32 [ 0, %if.end11.i.usb_maxpacket.exit.thread.i_crit_edge ], [ %spec.select.i, %usb_maxpacket.exit.i ]
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx2.i, align 8
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 5
  %51 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterval.i, align 1
  %conv28.i = zext i8 %52 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %31, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or14.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %48, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ati_remote2_complete_mouse, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %59 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp6.i.i = icmp ugt i32 %60, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge

usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge: ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = tail call i32 @llvm.smax.i32(i32 %conv28.i, i32 1) #9
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 16) #9
  %sub.i.i = add nsw i32 %62, -1
  %shl.i73.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i73.i, %if.then.i.i ], [ %conv28.i, %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge ]
  %63 = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 25
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %interval.sink.i.i, ptr %63, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %start_frame.i.i, align 4
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 8
  %68 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx6.i, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 15
  %70 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %transfer_dma.i, align 4
  %71 = load ptr, ptr %arrayidx6.i, align 8
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %transfer_flags.i, align 4
  %or35.i = or i32 %73, 4
  store i32 %or35.i, ptr %transfer_flags.i, align 4
  %arrayidx.1.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 6, i32 1
  %call.1.i = tail call ptr @usb_alloc_coherent(ptr noundef %31, i32 noundef 4, i32 noundef 3264, ptr noundef %arrayidx.1.i) #9
  %arrayidx2.1.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.1.i, ptr %arrayidx2.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %usb_fill_int_urb.exit.i.fail3_crit_edge, label %if.end.1.i

usb_fill_int_urb.exit.i.fail3_crit_edge:          ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end.1.i:                                       ; preds = %usb_fill_int_urb.exit.i
  %call5.1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx6.1.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call5.1.i, ptr %arrayidx6.1.i, align 4
  %tobool9.not.1.i = icmp eq ptr %call5.1.i, null
  br i1 %tobool9.not.1.i, label %if.end.1.i.fail3_crit_edge, label %if.end11.1.i

if.end.1.i.fail3_crit_edge:                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end11.1.i:                                     ; preds = %if.end.1.i
  %76 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx63, align 4
  %bEndpointAddress.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %bEndpointAddress.1.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bEndpointAddress.1.i, align 1
  %conv.1.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %31, align 8
  %shl.i.1.i = shl i32 %81, 8
  %shl1.i.1.i = shl nuw nsw i32 %conv.1.i, 15
  %or.i.1.i = or i32 %shl.i.1.i, %shl1.i.1.i
  %or14.1.i = or i32 %or.i.1.i, 1073741952
  %82 = lshr i32 %or.i.1.i, 15
  %and.i.1.i = and i32 %82, 15
  %arrayidx57.i.1.i = getelementptr %struct.usb_device, ptr %31, i32 0, i32 21, i32 %and.i.1.i
  %83 = ptrtoint ptr %arrayidx57.i.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx57.i.1.i, align 4
  %tobool59.not.i.1.i = icmp eq ptr %84, null
  br i1 %tobool59.not.i.1.i, label %if.end11.1.i.usb_maxpacket.exit.thread.1.i_crit_edge, label %usb_maxpacket.exit.1.i

if.end11.1.i.usb_maxpacket.exit.thread.1.i_crit_edge: ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit.thread.1.i

usb_maxpacket.exit.1.i:                           ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i.i.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %wMaxPacketSize.i.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %wMaxPacketSize.i.i.1.i, align 1
  %87 = and i16 %86, -249
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #9
  %89 = tail call i16 @llvm.umin.i16(i16 %88, i16 4) #9
  %spec.select.1.i = zext i16 %89 to i32
  br label %usb_maxpacket.exit.thread.1.i

usb_maxpacket.exit.thread.1.i:                    ; preds = %usb_maxpacket.exit.1.i, %if.end11.1.i.usb_maxpacket.exit.thread.1.i_crit_edge
  %90 = phi i32 [ 0, %if.end11.1.i.usb_maxpacket.exit.thread.1.i_crit_edge ], [ %spec.select.1.i, %usb_maxpacket.exit.1.i ]
  %91 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx2.1.i, align 4
  %bInterval.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 5
  %93 = ptrtoint ptr %bInterval.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bInterval.1.i, align 1
  %conv28.1.i = zext i8 %94 to i32
  %dev1.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 8
  %95 = ptrtoint ptr %dev1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %31, ptr %dev1.i.1.i, align 4
  %pipe2.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 10
  %96 = ptrtoint ptr %pipe2.i.1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or14.1.i, ptr %pipe2.i.1.i, align 4
  %transfer_buffer3.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 14
  %97 = ptrtoint ptr %transfer_buffer3.i.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %92, ptr %transfer_buffer3.i.1.i, align 4
  %transfer_buffer_length.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 19
  %98 = ptrtoint ptr %transfer_buffer_length.i.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %90, ptr %transfer_buffer_length.i.1.i, align 4
  %complete.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 28
  %99 = ptrtoint ptr %complete.i.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @ati_remote2_complete_key, ptr %complete.i.1.i, align 4
  %context4.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 27
  %100 = ptrtoint ptr %context4.i.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i, ptr %context4.i.1.i, align 4
  %101 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp.i.1.i = icmp eq i32 %102, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp6.i.1.i = icmp ugt i32 %102, 4
  %or.cond.i.1.i = or i1 %cmp.i.1.i, %cmp6.i.1.i
  br i1 %or.cond.i.1.i, label %if.then.i.1.i, label %usb_maxpacket.exit.thread.1.i.if.end67_crit_edge

usb_maxpacket.exit.thread.1.i.if.end67_crit_edge: ; preds = %usb_maxpacket.exit.thread.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then.i.1.i:                                    ; preds = %usb_maxpacket.exit.thread.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = tail call i32 @llvm.smax.i32(i32 %conv28.1.i, i32 1) #9
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 16) #9
  %sub.i.1.i = add nsw i32 %104, -1
  %shl.i73.1.i = shl nuw nsw i32 1, %sub.i.1.i
  br label %if.end67

if.end67:                                         ; preds = %if.then.i.1.i, %usb_maxpacket.exit.thread.1.i.if.end67_crit_edge
  %interval.sink.i.1.i = phi i32 [ %shl.i73.1.i, %if.then.i.1.i ], [ %conv28.1.i, %usb_maxpacket.exit.thread.1.i.if.end67_crit_edge ]
  %105 = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 25
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %interval.sink.i.1.i, ptr %105, align 4
  %start_frame.i.1.i = getelementptr inbounds %struct.urb, ptr %call5.1.i, i32 0, i32 23
  %107 = ptrtoint ptr %start_frame.i.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %start_frame.i.1.i, align 4
  %108 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.1.i, align 4
  %110 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx6.1.i, align 4
  %transfer_dma.1.i = getelementptr inbounds %struct.urb, ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %transfer_dma.1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %transfer_dma.1.i, align 4
  %113 = load ptr, ptr %arrayidx6.1.i, align 4
  %transfer_flags.1.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %transfer_flags.1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %transfer_flags.1.i, align 4
  %or35.1.i = or i32 %115, 4
  store i32 %or35.1.i, ptr %transfer_flags.1.i, align 4
  %116 = load i32, ptr @channel_mask, align 4
  %channel_mask = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 13
  %117 = ptrtoint ptr %channel_mask to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %channel_mask, align 8
  %118 = load i32, ptr @mode_mask, align 4
  %mode_mask = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 14
  %119 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %mode_mask, align 4
  %call69 = tail call fastcc i32 @ati_remote2_setup(ptr noundef nonnull %call7.i.i, i32 noundef %116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.fail3_crit_edge

if.end67.fail3_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end72:                                         ; preds = %if.end67
  %phys = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 10
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %120 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i141 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.41, ptr noundef %123, ptr noundef %devpath.i) #9
  %call76 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.19, i32 noundef 64) #9
  %name = getelementptr inbounds %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 9
  %call78 = tail call i32 @strlcat(ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef 64) #9
  %call80 = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @ati_remote2_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end72.fail3_crit_edge

if.end72.fail3_crit_edge:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end83:                                         ; preds = %if.end72
  %call84 = tail call fastcc i32 @ati_remote2_input_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %fail4

if.end87:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %124 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 6
  %125 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  br label %cleanup

fail4:                                            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @ati_remote2_attr_group) #9
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end72.fail3_crit_edge, %if.end67.fail3_crit_edge, %if.end.1.i.fail3_crit_edge, %usb_fill_int_urb.exit.i.fail3_crit_edge, %if.end.i.fail3_crit_edge, %if.end58.fail3_crit_edge
  %r.0 = phi i32 [ %call69, %if.end67.fail3_crit_edge ], [ %call80, %if.end72.fail3_crit_edge ], [ %call84, %fail4 ], [ -12, %if.end58.fail3_crit_edge ], [ -12, %if.end.i.fail3_crit_edge ], [ -12, %usb_fill_int_urb.exit.i.fail3_crit_edge ], [ -12, %if.end.1.i.fail3_crit_edge ]
  %arrayidx.i142 = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 4, i32 0
  %126 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i142, align 8
  tail call void @usb_free_urb(ptr noundef %127) #9
  %128 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %udev5, align 4
  %130 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx2.i, align 8
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i, align 8
  tail call void @usb_free_coherent(ptr noundef %129, i32 noundef 4, ptr noundef %131, i32 noundef %133) #9
  %arrayidx.1.i144 = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 4, i32 1
  %134 = ptrtoint ptr %arrayidx.1.i144 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.1.i144, align 4
  tail call void @usb_free_urb(ptr noundef %135) #9
  %136 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %udev5, align 4
  %arrayidx1.1.i = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 5, i32 1
  %138 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx1.1.i, align 4
  %arrayidx2.1.i145 = getelementptr %struct.ati_remote2, ptr %call7.i.i, i32 0, i32 6, i32 1
  %140 = ptrtoint ptr %arrayidx2.1.i145 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx2.1.i145, align 4
  tail call void @usb_free_coherent(ptr noundef %137, i32 noundef 4, ptr noundef %139, i32 noundef %141) #9
  br label %fail2

fail2:                                            ; preds = %fail3, %do.end56
  %r.1 = phi i32 [ -19, %do.end56 ], [ %r.0, %fail3 ]
  %142 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx17, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ati_remote2_driver, ptr noundef %143) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end35.fail1_crit_edge, %do.end29, %do.end
  %r.2 = phi i32 [ -19, %do.end ], [ -19, %do.end29 ], [ %call38, %if.end35.fail1_crit_edge ], [ %r.1, %fail2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end87, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %fail1 ], [ 0, %if.end87 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote2_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @input_unregister_device(ptr noundef %7) #9
  %udev = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ati_remote2_attr_group) #9
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %11) #9
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %arrayidx1.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 6, i32 0
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  tail call void @usb_free_coherent(ptr noundef %13, i32 noundef 4, ptr noundef %15, i32 noundef %17) #9
  %arrayidx.1.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #9
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %arrayidx1.1.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.1.i, align 4
  %arrayidx2.1.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef 4, ptr noundef %23, i32 noundef %25) #9
  %arrayidx = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ati_remote2_driver, ptr noundef %27) #9
  tail call void @kfree(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_suspend.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_suspend, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_suspend.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #9
  %12 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_resume.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_resume, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_resume.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.then12_crit_edge, label %if.then8

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then8:                                         ; preds = %do.end
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  br label %if.end10

if.end.i:                                         ; preds = %if.then8
  %arrayidx3.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.then12_crit_edge, label %if.then6.i

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #9
  %arrayidx13.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 2, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6.i, %do.end.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then6.i ], [ %intf.i, %do.end.i ]
  %call4.sink.i = phi i32 [ %call4.i, %if.then6.i ], [ %call.i, %do.end.i ]
  %16 = ptrtoint ptr %arrayidx13.sink.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13.sink.i, align 4
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.49, i32 noundef %call4.sink.i) #13
  br label %if.end15

if.then12:                                        ; preds = %if.end.i.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and14 = and i32 %19, -3
  store i32 %and14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %r.027 = phi i32 [ 0, %if.then12 ], [ %call4.sink.i, %if.end10 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.027, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_reset_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_reset_resume.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_reset_resume, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_reset_resume.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.55) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %channel_mask = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_mask, align 4
  %call7 = tail call fastcc i32 @ati_remote2_setup(ptr noundef %5, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.then16_crit_edge, label %if.then12

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then12:                                        ; preds = %if.end10
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  br label %if.end14

if.end.i:                                         ; preds = %if.then12
  %arrayidx3.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.then16_crit_edge, label %if.then6.i

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #9
  %arrayidx13.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 2, i32 1
  br label %if.end14

if.end14:                                         ; preds = %if.then6.i, %do.end.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then6.i ], [ %intf.i, %do.end.i ]
  %call4.sink.i = phi i32 [ %call4.i, %if.then6.i ], [ %call.i, %do.end.i ]
  %18 = ptrtoint ptr %arrayidx13.sink.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13.sink.i, align 4
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.49, i32 noundef %call4.sink.i) #13
  br label %out

if.then16:                                        ; preds = %if.end.i.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and18 = and i32 %21, -3
  store i32 %and18, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.then16, %if.end14, %do.end.out_crit_edge
  %r.1 = phi i32 [ %call7, %do.end.out_crit_edge ], [ %call4.sink.i, %if.end14 ], [ 0, %if.then16 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_pre_reset(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_pre_reset.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_pre_reset, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_pre_reset.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #9
  %12 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_post_reset(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_post_reset.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_post_reset, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !179

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_post_reset.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then7, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %do.end
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.ati_remote2, ptr %5, i32 0, i32 2
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then7
  %arrayidx3.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end9_crit_edge, label %if.then6.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #9
  %arrayidx13.i = getelementptr %struct.ati_remote2, ptr %5, i32 0, i32 2, i32 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %do.end.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then6.i ], [ %intf.i, %do.end.i ]
  %call4.sink.i = phi i32 [ %call4.i, %if.then6.i ], [ %call.i, %do.end.i ]
  %16 = ptrtoint ptr %arrayidx13.sink.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13.sink.i, align 4
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.49, i32 noundef %call4.sink.i) #13
  br label %if.end9

if.end9:                                          ; preds = %cleanup.sink.split.i, %if.end.i.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %r.0 = phi i32 [ 0, %do.end.if.end9_crit_edge ], [ 0, %if.end.i.if.end9_crit_edge ], [ %call4.sink.i, %cleanup.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ati_remote2_setup(ptr nocapture noundef readonly %ar2, i32 noundef %ch_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ch_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.024.lcssa = phi i16 [ 1, %entry.if.then_crit_edge ], [ 2, %for.inc.if.then_crit_edge ], [ 3, %for.inc.1.if.then_crit_edge ], [ 4, %for.inc.2.if.then_crit_edge ], [ 5, %for.inc.3.if.then_crit_edge ], [ 6, %for.inc.4.if.then_crit_edge ], [ 7, %for.inc.5.if.then_crit_edge ], [ 8, %for.inc.6.if.then_crit_edge ], [ 9, %for.inc.7.if.then_crit_edge ], [ 10, %for.inc.8.if.then_crit_edge ], [ 11, %for.inc.9.if.then_crit_edge ], [ 12, %for.inc.10.if.then_crit_edge ], [ 13, %for.inc.11.if.then_crit_edge ], [ 14, %for.inc.12.if.then_crit_edge ], [ 15, %for.inc.13.if.then_crit_edge ], [ 16, %for.inc.14.if.then_crit_edge ]
  %shl.lcssa = phi i32 [ -2, %entry.if.then_crit_edge ], [ -3, %for.inc.if.then_crit_edge ], [ -5, %for.inc.1.if.then_crit_edge ], [ -9, %for.inc.2.if.then_crit_edge ], [ -17, %for.inc.3.if.then_crit_edge ], [ -33, %for.inc.4.if.then_crit_edge ], [ -65, %for.inc.5.if.then_crit_edge ], [ -129, %for.inc.6.if.then_crit_edge ], [ -257, %for.inc.7.if.then_crit_edge ], [ -513, %for.inc.8.if.then_crit_edge ], [ -1025, %for.inc.9.if.then_crit_edge ], [ -2049, %for.inc.10.if.then_crit_edge ], [ -4097, %for.inc.11.if.then_crit_edge ], [ -8193, %for.inc.12.if.then_crit_edge ], [ -16385, %for.inc.13.if.then_crit_edge ], [ -32769, %for.inc.14.if.then_crit_edge ]
  %and2 = and i32 %shl.lcssa, %ch_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i16 %i.024.lcssa, i16 0
  br label %for.end

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %ch_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %ch_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %ch_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %ch_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %ch_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %ch_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i32 %ch_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i32 %ch_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i32 %ch_mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %and.10 = and i32 %ch_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %and.11 = and i32 %ch_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %and.12 = and i32 %ch_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.if.then_crit_edge

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %and.13 = and i32 %ch_mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.if.then_crit_edge

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %and.14 = and i32 %ch_mask, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.if.then_crit_edge

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %and.15 = and i32 %ch_mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool.not.15, label %for.inc.14.for.end_crit_edge, label %for.inc.14.if.then_crit_edge

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.14.for.end_crit_edge, %if.then
  %channel.0 = phi i16 [ 0, %for.inc.14.for.end_crit_edge ], [ %spec.select, %if.then ]
  %udev = getelementptr inbounds %struct.ati_remote2, ptr %ar2, i32 0, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call7 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 32, i8 noundef zeroext 65, i16 noundef zeroext %channel.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  ret i32 %call7
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ati_remote2_input_init(ptr noundef %ar2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ar2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ar2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ar2, ptr %driver_data.i.i, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1048582, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 6
  %arrayidx3 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 8
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196608, ptr %arrayidx3, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %relbit, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end
  %index.0119 = phi i32 [ 0, %if.end ], [ %inc, %for.body7.for.body7_crit_edge ]
  %keycode = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %index.0119, i32 1
  %5 = ptrtoint ptr %keycode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %keycode, align 2
  %arrayidx11 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 0, i32 %index.0119
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx11, align 2
  %conv = zext i16 %6 to i32
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %9
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %index.0119, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.body7.for.body7.1_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.for.body7.1_crit_edge:                  ; preds = %for.body7
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.body7.1.for.body7.1_crit_edge, %for.body7.for.body7.1_crit_edge
  %index.0119.1 = phi i32 [ %inc.1, %for.body7.1.for.body7.1_crit_edge ], [ 0, %for.body7.for.body7.1_crit_edge ]
  %keycode.1 = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %index.0119.1, i32 1
  %10 = ptrtoint ptr %keycode.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %keycode.1, align 2
  %arrayidx11.1 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 1, i32 %index.0119.1
  %12 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx11.1, align 2
  %conv.1 = zext i16 %11 to i32
  %rem.i.1 = and i32 %conv.1, 31
  %shl.i.1 = shl nuw i32 1, %rem.i.1
  %div2.i.1 = lshr i32 %conv.1, 5
  %add.ptr.i.1 = getelementptr i32, ptr %keybit, i32 %div2.i.1
  %13 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.1, align 4
  %or.i.1 = or i32 %shl.i.1, %14
  store i32 %or.i.1, ptr %add.ptr.i.1, align 4
  %inc.1 = add nuw nsw i32 %index.0119.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 46
  br i1 %exitcond.1.not, label %for.body7.1.for.body7.2_crit_edge, label %for.body7.1.for.body7.1_crit_edge

for.body7.1.for.body7.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.1

for.body7.1.for.body7.2_crit_edge:                ; preds = %for.body7.1
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.body7.2.for.body7.2_crit_edge, %for.body7.1.for.body7.2_crit_edge
  %index.0119.2 = phi i32 [ %inc.2, %for.body7.2.for.body7.2_crit_edge ], [ 0, %for.body7.1.for.body7.2_crit_edge ]
  %keycode.2 = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %index.0119.2, i32 1
  %15 = ptrtoint ptr %keycode.2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %keycode.2, align 2
  %arrayidx11.2 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 2, i32 %index.0119.2
  %17 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx11.2, align 2
  %conv.2 = zext i16 %16 to i32
  %rem.i.2 = and i32 %conv.2, 31
  %shl.i.2 = shl nuw i32 1, %rem.i.2
  %div2.i.2 = lshr i32 %conv.2, 5
  %add.ptr.i.2 = getelementptr i32, ptr %keybit, i32 %div2.i.2
  %18 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.2, align 4
  %or.i.2 = or i32 %shl.i.2, %19
  store i32 %or.i.2, ptr %add.ptr.i.2, align 4
  %inc.2 = add nuw nsw i32 %index.0119.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 46
  br i1 %exitcond.2.not, label %for.body7.2.for.body7.3_crit_edge, label %for.body7.2.for.body7.2_crit_edge

for.body7.2.for.body7.2_crit_edge:                ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.2

for.body7.2.for.body7.3_crit_edge:                ; preds = %for.body7.2
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.body7.3.for.body7.3_crit_edge, %for.body7.2.for.body7.3_crit_edge
  %index.0119.3 = phi i32 [ %inc.3, %for.body7.3.for.body7.3_crit_edge ], [ 0, %for.body7.2.for.body7.3_crit_edge ]
  %keycode.3 = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %index.0119.3, i32 1
  %20 = ptrtoint ptr %keycode.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %keycode.3, align 2
  %arrayidx11.3 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 3, i32 %index.0119.3
  %22 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx11.3, align 2
  %conv.3 = zext i16 %21 to i32
  %rem.i.3 = and i32 %conv.3, 31
  %shl.i.3 = shl nuw i32 1, %rem.i.3
  %div2.i.3 = lshr i32 %conv.3, 5
  %add.ptr.i.3 = getelementptr i32, ptr %keybit, i32 %div2.i.3
  %23 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.3, align 4
  %or.i.3 = or i32 %shl.i.3, %24
  store i32 %or.i.3, ptr %add.ptr.i.3, align 4
  %inc.3 = add nuw nsw i32 %index.0119.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 46
  br i1 %exitcond.3.not, label %for.body7.3.for.body7.4_crit_edge, label %for.body7.3.for.body7.3_crit_edge

for.body7.3.for.body7.3_crit_edge:                ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.3

for.body7.3.for.body7.4_crit_edge:                ; preds = %for.body7.3
  br label %for.body7.4

for.body7.4:                                      ; preds = %for.body7.4.for.body7.4_crit_edge, %for.body7.3.for.body7.4_crit_edge
  %index.0119.4 = phi i32 [ %inc.4, %for.body7.4.for.body7.4_crit_edge ], [ 0, %for.body7.3.for.body7.4_crit_edge ]
  %keycode.4 = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %index.0119.4, i32 1
  %25 = ptrtoint ptr %keycode.4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %keycode.4, align 2
  %arrayidx11.4 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 4, i32 %index.0119.4
  %27 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx11.4, align 2
  %conv.4 = zext i16 %26 to i32
  %rem.i.4 = and i32 %conv.4, 31
  %shl.i.4 = shl nuw i32 1, %rem.i.4
  %div2.i.4 = lshr i32 %conv.4, 5
  %add.ptr.i.4 = getelementptr i32, ptr %keybit, i32 %div2.i.4
  %28 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.4, align 4
  %or.i.4 = or i32 %shl.i.4, %29
  store i32 %or.i.4, ptr %add.ptr.i.4, align 4
  %inc.4 = add nuw nsw i32 %index.0119.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 46
  br i1 %exitcond.4.not, label %ati_remote2_lookup.exit, label %for.body7.4.for.body7.4_crit_edge

for.body7.4.for.body7.4_crit_edge:                ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.4

ati_remote2_lookup.exit:                          ; preds = %for.body7.4
  %arrayidx22 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 0, i32 24
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 148, ptr %arrayidx22, align 2
  %arrayidx25 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 1, i32 24
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 149, ptr %arrayidx25, align 2
  %arrayidx28 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 2, i32 24
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 202, ptr %arrayidx28, align 2
  %arrayidx31 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 3, i32 24
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 203, ptr %arrayidx31, align 2
  %arrayidx34 = getelementptr %struct.ati_remote2, ptr %ar2, i32 0, i32 11, i32 4, i32 24
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 376, ptr %arrayidx34, align 2
  %add.ptr.i109 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i109, align 4
  %or.i112 = or i32 %36, 3145728
  store i32 %or.i112, ptr %add.ptr.i109, align 4
  %add.ptr.i113 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 6
  %37 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i113, align 4
  %or.i116 = or i32 %38, 3072
  store i32 %or.i116, ptr %add.ptr.i113, align 4
  %add.ptr.i117 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 11
  %39 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i117, align 4
  %or.i118 = or i32 %40, 16777216
  store i32 %or.i118, ptr %add.ptr.i117, align 4
  %rep = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 24
  %41 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 250, ptr %rep, align 4
  %arrayidx47 = getelementptr %struct.input_dev, ptr %call, i32 0, i32 24, i32 1
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 33, ptr %arrayidx47, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %43 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ati_remote2_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %44 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ati_remote2_close, ptr %close, align 4
  %getkeycode = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 19
  %45 = ptrtoint ptr %getkeycode to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ati_remote2_getkeycode, ptr %getkeycode, align 4
  %setkeycode = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 18
  %46 = ptrtoint ptr %setkeycode to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ati_remote2_setkeycode, ptr %setkeycode, align 8
  %name = getelementptr inbounds %struct.ati_remote2, ptr %ar2, i32 0, i32 9
  %47 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %name, ptr %call, align 8
  %phys = getelementptr inbounds %struct.ati_remote2, ptr %ar2, i32 0, i32 10
  %phys51 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %48 = ptrtoint ptr %phys51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %phys, ptr %phys51, align 4
  %udev = getelementptr inbounds %struct.ati_remote2, ptr %ar2, i32 0, i32 1
  %49 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %51 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 16, i32 7
  %52 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %idVendor.i, align 8
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 16, i32 8
  %56 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %idProduct.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #9
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 16, i32 9
  %60 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bcdDevice.i, align 4
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #9
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %version.i, align 2
  %64 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %parent, align 8
  %call54 = tail call i32 @input_register_device(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %ati_remote2_lookup.exit.cleanup_crit_edge, label %if.then56

ati_remote2_lookup.exit.cleanup_crit_edge:        ; preds = %ati_remote2_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %ati_remote2_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_free_device(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %ati_remote2_lookup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call54, %if.then56 ], [ 0, %ati_remote2_lookup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote2_complete_key(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %entry.do.body_crit_edge
    i32 -84, label %entry.do.body_crit_edge43
    i32 -104, label %entry.do.body_crit_edge44
    i32 -108, label %entry.do.body_crit_edge45
  ]

entry.do.body_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %udev = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i32
  %14 = lshr i32 %conv.i, 4
  %shl.i = shl nuw nsw i32 1, %14
  %channel_mask.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %channel_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_mask.i, align 4
  %and.i = and i32 %shl.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %and5.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and5.i)
  %cmp.i = icmp ugt i32 %and5.i, 4
  br i1 %cmp.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %arrayidx9.i = getelementptr i8, ptr %11, i32 3
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %20 to i32
  %arrayidx11.i = getelementptr i8, ptr %11, i32 2
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %22 to i32
  %arrayidx13.i = getelementptr i8, ptr %11, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %conv.i) #13
  br label %sw.epilog

if.end17.i:                                       ; preds = %if.end.i
  %arrayidx18.i = getelementptr i8, ptr %11, i32 2
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %26)
  %cmp20.i = icmp eq i8 %26, 63
  br i1 %cmp20.i, label %if.then22.i, label %if.end17.i.if.end35.i_crit_edge

if.end17.i.if.end35.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then22.i:                                      ; preds = %if.end17.i
  %mode23.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %mode23.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and5.i)
  %cmp24.i = icmp eq i32 %28, %and5.i
  br i1 %cmp24.i, label %if.then22.i.sw.epilog_crit_edge, label %if.end27.i

if.then22.i.sw.epilog_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end27.i:                                       ; preds = %if.then22.i
  %arrayidx28.i = getelementptr i8, ptr %11, i32 1
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp30.i = icmp eq i8 %30, 0
  br i1 %cmp30.i, label %if.then32.i, label %if.end27.i.if.end35.i_crit_edge

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %mode23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and5.i, ptr %mode23.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end27.i.if.end35.i_crit_edge, %if.end17.i.if.end35.i_crit_edge
  %shl36.i = shl nuw nsw i32 1, %and5.i
  %mode_mask.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_mask.i, align 4
  %and37.i = and i32 %33, %shl36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end35.i.sw.epilog_crit_edge, label %if.end35.i.for.body.i.i_crit_edge

if.end35.i.for.body.i.i_crit_edge:                ; preds = %if.end35.i
  br label %for.body.i.i

if.end35.i.sw.epilog_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end35.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end35.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %i.07.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %26)
  %cmp2.i.i = icmp eq i8 %35, %26
  br i1 %cmp2.i.i, label %if.end58.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 46
  br i1 %exitcond.not.i.i, label %do.end46.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end46.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48.i, align 4
  %dev49.i = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  %arrayidx50.i = getelementptr i8, ptr %11, i32 3
  %38 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx18.i, align 1
  %conv53.i = zext i8 %41 to i32
  %arrayidx54.i = getelementptr i8, ptr %11, i32 1
  %42 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %11, align 1
  %conv57.i = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49.i, ptr noundef nonnull @.str.30, i32 noundef %conv51.i, i32 noundef %conv53.i, i32 noundef %conv55.i, i32 noundef %conv57.i) #13
  br label %sw.epilog

if.end58.i:                                       ; preds = %for.body.i.i
  %arrayidx59.i = getelementptr i8, ptr %11, i32 1
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx59.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %47, label %do.end89.i [
    i8 0, label %if.end58.i.sw.epilog.i_crit_edge
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb63.i
  ]

if.end58.i.sw.epilog.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %rep.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 24
  %50 = ptrtoint ptr %rep.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rep.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #9
  %add.i = add i32 %call2.i.i, %49
  %jiffies.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i, ptr %jiffies.i, align 4
  br label %sw.epilog.i

sw.bb63.i:                                        ; preds = %if.end58.i
  %arrayidx65.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 %and5.i, i32 %i.07.i.i
  %53 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx65.i, align 2
  %55 = and i16 %54, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %55)
  %switch.i = icmp eq i16 %55, 272
  br i1 %switch.i, label %sw.bb63.i.sw.epilog_crit_edge, label %if.end76.i

sw.bb63.i.sw.epilog_crit_edge:                    ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end76.i:                                       ; preds = %sw.bb63.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %jiffies77.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %jiffies77.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %jiffies77.i, align 4
  %sub.i = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp78.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp78.i, label %if.end81.i, label %if.end76.i.sw.epilog_crit_edge

if.end76.i.sw.epilog_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end81.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %arrayidx83.i = getelementptr %struct.input_dev, ptr %9, i32 0, i32 24, i32 1
  %60 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx83.i, align 4
  %call2.i161.i = tail call i32 @__msecs_to_jiffies(i32 noundef %61) #9
  %add85.i = add i32 %call2.i161.i, %59
  %62 = ptrtoint ptr %jiffies77.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add85.i, ptr %jiffies77.i, align 4
  br label %sw.epilog.i

do.end89.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv60.i = zext i8 %47 to i32
  %arrayidx91.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx91.i, align 4
  %dev92.i = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  %arrayidx93.i = getelementptr i8, ptr %11, i32 3
  %65 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx93.i, align 1
  %conv94.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx18.i, align 1
  %conv96.i = zext i8 %68 to i32
  %69 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %11, align 1
  %conv100.i = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.i, ptr noundef nonnull @.str.33, i32 noundef %conv94.i, i32 noundef %conv96.i, i32 noundef %conv60.i, i32 noundef %conv100.i) #13
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %if.end81.i, %sw.bb.i, %if.end58.i.sw.epilog.i_crit_edge
  %arrayidx103.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 %and5.i, i32 %i.07.i.i
  %71 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx103.i, align 2
  %conv104.i = zext i16 %72 to i32
  %73 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx59.i, align 1
  %conv106.i = zext i8 %74 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %conv104.i, i32 noundef %conv106.i) #9
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge43, %entry.do.body_crit_edge44, %entry.do.body_crit_edge45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_complete_key.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_complete_key, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !179

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_complete_key.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %78) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev5 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udev5, align 4
  %call.i.i34 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i35 = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 15, i32 12, i32 22
  %81 = ptrtoint ptr %last_busy.i.i35 to i32
  call void @__asan_store8_noabort(i32 %81)
  store volatile i64 %call.i.i34, ptr %last_busy.i.i35, align 8
  %arrayidx10 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx10, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %85) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.epilog.i, %do.end89.i, %if.end76.i.sw.epilog_crit_edge, %sw.bb63.i.sw.epilog_crit_edge, %do.end46.i, %if.end35.i.sw.epilog_crit_edge, %if.then22.i.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %call13 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %do.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx20, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %87, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote2_complete_mouse(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %entry.do.body_crit_edge
    i32 -84, label %entry.do.body_crit_edge37
    i32 -104, label %entry.do.body_crit_edge38
    i32 -108, label %entry.do.body_crit_edge39
  ]

entry.do.body_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %udev = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %buf.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i32
  %14 = lshr i32 %conv.i, 4
  %shl.i = shl nuw nsw i32 1, %14
  %channel_mask.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %channel_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_mask.i, align 4
  %and.i = and i32 %shl.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %and5.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and5.i)
  %cmp.i = icmp ugt i32 %and5.i, 4
  br i1 %cmp.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %arrayidx9.i = getelementptr i8, ptr %11, i32 3
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %20 to i32
  %arrayidx11.i = getelementptr i8, ptr %11, i32 2
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %22 to i32
  %arrayidx13.i = getelementptr i8, ptr %11, i32 1
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %conv.i) #13
  br label %sw.epilog

if.end17.i:                                       ; preds = %if.end.i
  %shl18.i = shl nuw nsw i32 1, %and5.i
  %mode_mask.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode_mask.i, align 4
  %and19.i = and i32 %26, %shl18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.sw.epilog_crit_edge, label %if.end22.i

if.end17.i.sw.epilog_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx23.i = getelementptr i8, ptr %11, i32 1
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = sext i8 %28 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %conv24.i) #9
  %arrayidx25.i = getelementptr i8, ptr %11, i32 2
  %29 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = sext i8 %30 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef %conv26.i) #9
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge37, %entry.do.body_crit_edge38, %entry.do.body_crit_edge39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_complete_mouse.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_complete_mouse, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !179

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_complete_mouse.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.35, i32 noundef %34) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev5 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev5, align 4
  %call.i.i34 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i35 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i.i35 to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i.i34, ptr %last_busy.i.i35, align 8
  %intf9 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %intf9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf9, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.35, i32 noundef %41) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end22.i, %if.end17.i.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %call13 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %do.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %intf19 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %intf19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf19, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.35, i32 noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_show_channel_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr, i32 noundef 0) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel_mask = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_mask, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_store_channel_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr, i32 noundef 0) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !180
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool3.not = icmp ult i32 %4, 65536
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %intf6 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf6, align 4
  %call7 = call i32 @usb_autopm_get_interface(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf6, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call7) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %channel_mask = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end13.if.end20_crit_edge, label %if.then14

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end13
  %call15 = call fastcc i32 @ati_remote2_setup(ptr noundef %1, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %channel_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %channel_mask, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %r.0 = phi i32 [ %call15, %if.then14.if.end20_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end13.if.end20_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  %16 = ptrtoint ptr %intf6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf6, align 4
  call void @usb_autopm_put_interface(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool23.not = icmp eq i32 %r.0, 0
  %spec.select = select i1 %tobool23.not, i32 %count, i32 %r.0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_show_mode_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr, i32 noundef 0) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode_mask = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_store_mode_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr, i32 noundef 0) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !180
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %tobool3.not = icmp ult i32 %4, 32
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mode_mask = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mode_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_open(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_open.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_open.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %intf4 = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf4, align 4
  %call6 = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf4, align 4
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48, i32 noundef %call6) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.fail2_crit_edge

if.then17.fail2_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end.i:                                         ; preds = %if.then17
  %arrayidx3.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end22_crit_edge, label %if.then6.i

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #9
  %arrayidx13.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 2, i32 1
  br label %fail2

if.end22:                                         ; preds = %if.end.i.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  %18 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf4, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %19) #9
  br label %cleanup

fail2:                                            ; preds = %if.then6.i, %if.then17.fail2_crit_edge
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then6.i ], [ %intf4, %if.then17.fail2_crit_edge ]
  %call4.sink.i = phi i32 [ %call4.i, %if.then6.i ], [ %call.i, %if.then17.fail2_crit_edge ]
  %20 = ptrtoint ptr %arrayidx13.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13.sink.i, align 4
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.49, i32 noundef %call4.sink.i) #13
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  %22 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf4, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %fail2, %if.end22, %do.end11
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call6, %do.end11 ], [ %call4.sink.i, %fail2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote2_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote2_close.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote2_close, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote2_close.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ati_remote2_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %urb.i = getelementptr inbounds %struct.ati_remote2, ptr %1, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %8 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and8 = and i32 %11, -2
  store i32 %and8, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ati_remote2_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_getkeycode(ptr nocapture noundef readonly %idev, ptr noundef %ke) #2 align 64 {
entry:
  %scancode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode) #9
  %2 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scancode, align 4, !annotation !180
  %3 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ke, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %index1 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %6 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 229, i16 %7)
  %cmp = icmp ugt i16 %7, 229
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = zext i16 %7 to i32
  %div.lhs.trunc = trunc i16 %7 to i8
  %div.lhs.trunc.frozen = freeze i8 %div.lhs.trunc
  %div54 = udiv i8 %div.lhs.trunc.frozen, 46
  %div.zext = zext i8 %div54 to i32
  %8 = mul i8 %div54, 46
  %rem55.decomposed = sub i8 %div.lhs.trunc.frozen, %8
  %rem.zext = zext i8 %rem55.decomposed to i32
  %shl = shl nuw nsw i32 %div.zext, 8
  %arrayidx = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %rem.zext
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 2
  %conv9 = zext i8 %10 to i32
  %add = or i32 %shl, %conv9
  %11 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %scancode, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %call10 = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.else
  %12 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scancode, align 4
  %shr = lshr i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %13)
  %cmp14 = icmp ugt i32 %13, 1279
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %for.body.i.preheader

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end13
  %14 = trunc i32 %13 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %i.07.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp2.i = icmp eq i8 %16, %14
  br i1 %cmp2.i, label %if.end23, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 46
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %shr, 46
  %add24 = add nuw i32 %i.07.i, %mul
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end
  %mode.0 = phi i32 [ %div.zext, %if.end ], [ %shr, %if.end23 ]
  %offset.0 = phi i32 [ %rem.zext, %if.end ], [ %i.07.i, %if.end23 ]
  %index.0 = phi i32 [ %conv2, %if.end ], [ %add24, %if.end23 ]
  %arrayidx27 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 %mode.0, i32 %offset.0
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %18 to i32
  %keycode29 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %19 = ptrtoint ptr %keycode29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv28, ptr %keycode29, align 4
  %len = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %len, align 1
  %scancode30 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 4
  %21 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scancode, align 4
  %23 = ptrtoint ptr %scancode30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %scancode30, align 4
  %conv31 = trunc i32 %index.0 to i16
  %index32 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %24 = ptrtoint ptr %index32 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv31, ptr %index32, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %for.inc.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote2_setkeycode(ptr nocapture noundef %idev, ptr noundef %ke, ptr nocapture noundef %old_keycode) #2 align 64 {
entry:
  %scancode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode) #9
  %2 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %scancode, align 4, !annotation !180
  %3 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ke, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %index1 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %6 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 229, i16 %7)
  %cmp = icmp ugt i16 %7, 229
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %div.lhs.trunc = trunc i16 %7 to i8
  %div.lhs.trunc.frozen = freeze i8 %div.lhs.trunc
  %div82 = udiv i8 %div.lhs.trunc.frozen, 46
  %div.zext = zext i8 %div82 to i32
  %8 = mul i8 %div82, 46
  %rem83.decomposed = sub i8 %div.lhs.trunc.frozen, %8
  %rem.zext = zext i8 %rem83.decomposed to i32
  br label %if.end23

if.else:                                          ; preds = %entry
  %call9 = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %9 = ptrtoint ptr %scancode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scancode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %10)
  %cmp13 = icmp ugt i32 %10, 1279
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %shr = lshr i32 %10, 8
  %11 = trunc i32 %10 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.07.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [46 x %struct.anon.70], ptr @ati_remote2_key_table, i32 0, i32 %i.07.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp2.i = icmp eq i8 %13, %11
  br i1 %cmp2.i, label %for.body.i.if.end23_crit_edge, label %for.inc.i

for.body.i.if.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 46
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %for.body.i.if.end23_crit_edge, %if.end
  %mode.0 = phi i32 [ %div.zext, %if.end ], [ %shr, %for.body.i.if.end23_crit_edge ]
  %offset.0 = phi i32 [ %rem.zext, %if.end ], [ %i.07.i, %for.body.i.if.end23_crit_edge ]
  %arrayidx24 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 %mode.0, i32 %offset.0
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %15 to i32
  %16 = ptrtoint ptr %old_keycode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv25, ptr %old_keycode, align 4
  %keycode26 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %17 = ptrtoint ptr %keycode26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keycode26, align 4
  %conv27 = trunc i32 %18 to i16
  store i16 %conv27, ptr %arrayidx24, align 2
  %19 = load i32, ptr %keycode26, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 6
  %rem.i = and i32 %19, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %19, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %21
  store i32 %or.i, ptr %add.ptr.i, align 4
  %22 = load i32, ptr %old_keycode, align 4
  br label %for.body37

for.cond34:                                       ; preds = %for.body37
  %inc = add nuw nsw i32 %index.086, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.cond34.for.body37.1_crit_edge, label %for.cond34.for.body37_crit_edge

for.cond34.for.body37_crit_edge:                  ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

for.cond34.for.body37.1_crit_edge:                ; preds = %for.cond34
  br label %for.body37.1

for.body37:                                       ; preds = %for.cond34.for.body37_crit_edge, %if.end23
  %index.086 = phi i32 [ 0, %if.end23 ], [ %inc, %for.cond34.for.body37_crit_edge ]
  %arrayidx40 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 0, i32 %index.086
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv41)
  %cmp42 = icmp eq i32 %22, %conv41
  br i1 %cmp42, label %for.body37.cleanup_crit_edge, label %for.cond34

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body37.1:                                     ; preds = %for.cond34.1.for.body37.1_crit_edge, %for.cond34.for.body37.1_crit_edge
  %index.086.1 = phi i32 [ %inc.1, %for.cond34.1.for.body37.1_crit_edge ], [ 0, %for.cond34.for.body37.1_crit_edge ]
  %arrayidx40.1 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 1, i32 %index.086.1
  %25 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx40.1, align 2
  %conv41.1 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv41.1)
  %cmp42.1 = icmp eq i32 %22, %conv41.1
  br i1 %cmp42.1, label %for.body37.1.cleanup_crit_edge, label %for.cond34.1

for.body37.1.cleanup_crit_edge:                   ; preds = %for.body37.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond34.1:                                     ; preds = %for.body37.1
  %inc.1 = add nuw nsw i32 %index.086.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 46
  br i1 %exitcond.1.not, label %for.cond34.1.for.body37.2_crit_edge, label %for.cond34.1.for.body37.1_crit_edge

for.cond34.1.for.body37.1_crit_edge:              ; preds = %for.cond34.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.1

for.cond34.1.for.body37.2_crit_edge:              ; preds = %for.cond34.1
  br label %for.body37.2

for.body37.2:                                     ; preds = %for.cond34.2.for.body37.2_crit_edge, %for.cond34.1.for.body37.2_crit_edge
  %index.086.2 = phi i32 [ %inc.2, %for.cond34.2.for.body37.2_crit_edge ], [ 0, %for.cond34.1.for.body37.2_crit_edge ]
  %arrayidx40.2 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 2, i32 %index.086.2
  %27 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx40.2, align 2
  %conv41.2 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv41.2)
  %cmp42.2 = icmp eq i32 %22, %conv41.2
  br i1 %cmp42.2, label %for.body37.2.cleanup_crit_edge, label %for.cond34.2

for.body37.2.cleanup_crit_edge:                   ; preds = %for.body37.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond34.2:                                     ; preds = %for.body37.2
  %inc.2 = add nuw nsw i32 %index.086.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 46
  br i1 %exitcond.2.not, label %for.cond34.2.for.body37.3_crit_edge, label %for.cond34.2.for.body37.2_crit_edge

for.cond34.2.for.body37.2_crit_edge:              ; preds = %for.cond34.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.2

for.cond34.2.for.body37.3_crit_edge:              ; preds = %for.cond34.2
  br label %for.body37.3

for.body37.3:                                     ; preds = %for.cond34.3.for.body37.3_crit_edge, %for.cond34.2.for.body37.3_crit_edge
  %index.086.3 = phi i32 [ %inc.3, %for.cond34.3.for.body37.3_crit_edge ], [ 0, %for.cond34.2.for.body37.3_crit_edge ]
  %arrayidx40.3 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 3, i32 %index.086.3
  %29 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx40.3, align 2
  %conv41.3 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv41.3)
  %cmp42.3 = icmp eq i32 %22, %conv41.3
  br i1 %cmp42.3, label %for.body37.3.cleanup_crit_edge, label %for.cond34.3

for.body37.3.cleanup_crit_edge:                   ; preds = %for.body37.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond34.3:                                     ; preds = %for.body37.3
  %inc.3 = add nuw nsw i32 %index.086.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 46
  br i1 %exitcond.3.not, label %for.cond34.3.for.body37.4_crit_edge, label %for.cond34.3.for.body37.3_crit_edge

for.cond34.3.for.body37.3_crit_edge:              ; preds = %for.cond34.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.3

for.cond34.3.for.body37.4_crit_edge:              ; preds = %for.cond34.3
  br label %for.body37.4

for.body37.4:                                     ; preds = %for.cond34.4.for.body37.4_crit_edge, %for.cond34.3.for.body37.4_crit_edge
  %index.086.4 = phi i32 [ %inc.4, %for.cond34.4.for.body37.4_crit_edge ], [ 0, %for.cond34.3.for.body37.4_crit_edge ]
  %arrayidx40.4 = getelementptr %struct.ati_remote2, ptr %1, i32 0, i32 11, i32 4, i32 %index.086.4
  %31 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx40.4, align 2
  %conv41.4 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv41.4)
  %cmp42.4 = icmp eq i32 %22, %conv41.4
  br i1 %cmp42.4, label %for.body37.4.cleanup_crit_edge, label %for.cond34.4

for.body37.4.cleanup_crit_edge:                   ; preds = %for.body37.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond34.4:                                     ; preds = %for.body37.4
  %inc.4 = add nuw nsw i32 %index.086.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 46
  br i1 %exitcond.4.not, label %for.inc46.4, label %for.cond34.4.for.body37.4_crit_edge

for.cond34.4.for.body37.4_crit_edge:              ; preds = %for.cond34.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.4

for.inc46.4:                                      ; preds = %for.cond34.4
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %old_keycode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old_keycode, align 4
  %rem.i76 = and i32 %34, 31
  %shl.i77 = shl nuw i32 1, %rem.i76
  %div2.i78 = lshr i32 %34, 5
  %add.ptr.i79 = getelementptr i32, ptr %keybit, i32 %div2.i78
  %neg.i = xor i32 %shl.i77, -1
  %35 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i79, align 4
  %and.i = and i32 %36, %neg.i
  store i32 %and.i, ptr %add.ptr.i79, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc46.4, %for.body37.4.cleanup_crit_edge, %for.body37.3.cleanup_crit_edge, %for.body37.2.cleanup_crit_edge, %for.body37.1.cleanup_crit_edge, %for.body37.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc46.4 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %for.body37.4.cleanup_crit_edge ], [ 0, %for.body37.3.cleanup_crit_edge ], [ 0, %for.body37.2.cleanup_crit_edge ], [ 0, %for.body37.1.cleanup_crit_edge ], [ 0, %for.body37.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__UNIQUE_ID_description232, !1, !"__UNIQUE_ID_description232", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/ati_remote2.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_author233, !3, !"__UNIQUE_ID_author233", i1 false, i1 false}
!3 = !{!"../drivers/input/misc/ati_remote2.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/input/misc/ati_remote2.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_channel_mask, !8, !"__param_channel_mask", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/ati_remote2.c", i32 96, i32 1}
!9 = !{ptr @__UNIQUE_ID_channel_masktype240, !8, !"__UNIQUE_ID_channel_masktype240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_channel_mask241, !11, !"__UNIQUE_ID_channel_mask241", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/ati_remote2.c", i32 97, i32 1}
!12 = !{ptr @__param_mode_mask, !13, !"__param_mode_mask", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/ati_remote2.c", i32 105, i32 1}
!14 = !{ptr @__UNIQUE_ID_mode_masktype242, !13, !"__UNIQUE_ID_mode_masktype242", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode_mask243, !16, !"__UNIQUE_ID_mode_mask243", i1 false, i1 false}
!16 = !{!"../drivers/input/misc/ati_remote2.c", i32 106, i32 1}
!17 = !{ptr @__initcall__kmod_ati_remote2__253_1035_ati_remote2_driver_init6, !18, !"__initcall__kmod_ati_remote2__253_1035_ati_remote2_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/input/misc/ati_remote2.c", i32 1035, i32 1}
!19 = !{ptr @__exitcall_ati_remote2_driver_exit, !18, !"__exitcall_ati_remote2_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_channel_mask, !8, !"__param_str_channel_mask", i1 false, i1 false}
!21 = !{ptr @param_ops_channel_mask, !22, !"param_ops_channel_mask", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/ati_remote2.c", i32 92, i32 38}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/ati_remote2.c", i32 61, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ati_remote2_set_channel_mask.__UNIQUE_ID_ddebug236, !24, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/ati_remote2.c", i32 69, i32 2}
!31 = !{ptr @ati_remote2_get_channel_mask.__UNIQUE_ID_ddebug237, !30, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/ati_remote2.c", i32 71, i32 25}
!34 = !{ptr @channel_mask, !35, !"channel_mask", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/ati_remote2.c", i32 90, i32 21}
!36 = !{ptr @__param_str_mode_mask, !13, !"__param_str_mode_mask", i1 false, i1 false}
!37 = !{ptr @param_ops_mode_mask, !38, !"param_ops_mode_mask", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/ati_remote2.c", i32 101, i32 38}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/ati_remote2.c", i32 77, i32 2}
!41 = !{ptr @ati_remote2_set_mode_mask.__UNIQUE_ID_ddebug238, !40, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/ati_remote2.c", i32 85, i32 2}
!44 = !{ptr @ati_remote2_get_mode_mask.__UNIQUE_ID_ddebug239, !43, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/ati_remote2.c", i32 87, i32 25}
!47 = !{ptr @mode_mask, !48, !"mode_mask", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/ati_remote2.c", i32 99, i32 21}
!49 = !{ptr @ati_remote2_driver, !50, !"ati_remote2_driver", i1 false, i1 false}
!50 = !{!"../drivers/input/misc/ati_remote2.c", i32 215, i32 26}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/misc/ati_remote2.c", i32 817, i32 3}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ati_remote2_probe._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @ati_remote2_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/ati_remote2.c", i32 828, i32 3}
!60 = !{ptr @ati_remote2_probe._entry.13, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ati_remote2_probe._entry_ptr.15, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/ati_remote2.c", i32 841, i32 3}
!64 = !{ptr @ati_remote2_probe._entry.16, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ati_remote2_probe._entry_ptr.18, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/ati_remote2.c", i32 860, i32 21}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/ati_remote2.c", i32 862, i32 21}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/ati_remote2.c", i32 466, i32 3}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ati_remote2_complete_key.__UNIQUE_ID_ddebug247, !73, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!76 = !{ptr @ati_remote2_complete_key._entry, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/ati_remote2.c", i32 471, i32 3}
!78 = !{ptr @ati_remote2_complete_key._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/ati_remote2.c", i32 477, i32 3}
!81 = !{ptr @ati_remote2_complete_key._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ati_remote2_complete_key._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/ati_remote2.c", i32 361, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ati_remote2_input_key._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ati_remote2_input_key._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/misc/ati_remote2.c", i32 388, i32 3}
!90 = !{ptr @ati_remote2_input_key._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ati_remote2_input_key._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/misc/ati_remote2.c", i32 413, i32 3}
!94 = !{ptr @ati_remote2_input_key._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ati_remote2_input_key._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ati_remote2_key_table, !97, !"ati_remote2_key_table", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/ati_remote2.c", i32 133, i32 3}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/ati_remote2.c", i32 437, i32 3}
!100 = !{ptr @ati_remote2_complete_mouse.__UNIQUE_ID_ddebug246, !99, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!101 = !{ptr @ati_remote2_complete_mouse._entry, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/input/misc/ati_remote2.c", i32 442, i32 3}
!103 = !{ptr @ati_remote2_complete_mouse._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @ati_remote2_complete_mouse._entry.36, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/input/misc/ati_remote2.c", i32 448, i32 3}
!106 = !{ptr @ati_remote2_complete_mouse._entry_ptr.37, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/ati_remote2.c", i32 322, i32 3}
!109 = !{ptr @ati_remote2_input_mouse._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ati_remote2_input_mouse._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/misc/ati_remote2.c", i32 692, i32 3}
!113 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ati_remote2_setup._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ati_remote2_setup._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/usb.h", i32 912, i32 31}
!118 = !{ptr @ati_remote2_attr_group, !119, !"ati_remote2_attr_group", i1 false, i1 false}
!119 = !{!"../drivers/input/misc/ati_remote2.c", i32 795, i32 31}
!120 = !{ptr @ati_remote2_attrs, !121, !"ati_remote2_attrs", i1 false, i1 false}
!121 = !{!"../drivers/input/misc/ati_remote2.c", i32 789, i32 26}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/misc/ati_remote2.c", i32 783, i32 8}
!124 = !{ptr @dev_attr_channel_mask, !123, !"dev_attr_channel_mask", i1 false, i1 false}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/misc/ati_remote2.c", i32 730, i32 3}
!127 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ati_remote2_store_channel_mask._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ati_remote2_store_channel_mask._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/misc/ati_remote2.c", i32 114, i32 8}
!132 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ati_remote2_mutex, !131, !"ati_remote2_mutex", i1 false, i1 false}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/misc/ati_remote2.c", i32 786, i32 8}
!136 = !{ptr @dev_attr_mode_mask, !135, !"dev_attr_mode_mask", i1 false, i1 false}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/misc/ati_remote2.c", i32 260, i32 2}
!139 = !{ptr @ati_remote2_open.__UNIQUE_ID_ddebug244, !138, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!140 = !{ptr @ati_remote2_open._entry, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/input/misc/ati_remote2.c", i32 264, i32 3}
!142 = !{ptr @ati_remote2_open._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/misc/ati_remote2.c", i32 234, i32 3}
!145 = !{ptr @ati_remote2_submit_urbs._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ati_remote2_submit_urbs._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @ati_remote2_submit_urbs._entry.50, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/input/misc/ati_remote2.c", i32 241, i32 3}
!149 = !{ptr @ati_remote2_submit_urbs._entry_ptr.51, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/misc/ati_remote2.c", i32 296, i32 2}
!152 = !{ptr @ati_remote2_close.__UNIQUE_ID_ddebug245, !151, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/misc/ati_remote2.c", i32 923, i32 2}
!155 = !{ptr @ati_remote2_suspend.__UNIQUE_ID_ddebug248, !154, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/misc/ati_remote2.c", i32 948, i32 2}
!158 = !{ptr @ati_remote2_resume.__UNIQUE_ID_ddebug249, !157, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/misc/ati_remote2.c", i32 974, i32 2}
!161 = !{ptr @ati_remote2_reset_resume.__UNIQUE_ID_ddebug250, !160, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/misc/ati_remote2.c", i32 1004, i32 2}
!164 = !{ptr @ati_remote2_pre_reset.__UNIQUE_ID_ddebug251, !163, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/misc/ati_remote2.c", i32 1025, i32 2}
!167 = !{ptr @ati_remote2_post_reset.__UNIQUE_ID_ddebug252, !166, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!168 = !{ptr @ati_remote2_id_table, !169, !"ati_remote2_id_table", i1 false, i1 false}
!169 = !{!"../drivers/input/misc/ati_remote2.c", i32 108, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148957047, i64 2148957052, i64 2148957065, i64 2148957109, i64 2148957143, i64 2148957164}
!180 = !{!"auto-init"}
