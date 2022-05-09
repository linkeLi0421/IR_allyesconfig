; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-prodikeys.c_pt.bc'
source_filename = "../drivers/hid/hid-prodikeys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pk_device = type { i32, ptr, ptr }
%struct.pcmidi_snd = type { ptr, i16, ptr, ptr, i16, i16, i16, i16, i16, [32 x %struct.pcmidi_sustain], i16, [24 x i16], %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pcmidi_sustain = type { i32, ptr, %struct.timer_list, i8, i8, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__param_str_index = internal constant [20 x i8] c"hid_prodikeys.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype234 = internal constant [42 x i8] c"hid_prodikeys.parmtype=index:array of int\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"hid_prodikeys.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype235 = internal constant [41 x i8] c"hid_prodikeys.parmtype=id:array of charp\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"hid_prodikeys.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype236 = internal constant [44 x i8] c"hid_prodikeys.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_index237 = internal constant [74 x i8] c"hid_prodikeys.parm=index:Index value for the PC-MIDI virtual audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_id238 = internal constant [69 x i8] c"hid_prodikeys.parm=id:ID string for the PC-MIDI virtual audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_enable239 = internal constant [70 x i8] c"hid_prodikeys.parm=enable:Enable for the PC-MIDI virtual audio driver\00", section ".modinfo", align 1
@__initcall__kmod_hid_prodikeys__240_898_pk_driver_init6 = internal global ptr @pk_driver_init, section ".initcall6.init", align 4
@pk_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @pk_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @pk_probe, ptr @pk_remove, ptr null, ptr @pk_raw_event, ptr null, ptr null, ptr null, ptr @pk_report_fixup, ptr @pk_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pk_driver_exit = internal global ptr @pk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file241 = internal constant [45 x i8] c"hid_prodikeys.file=drivers/hid/hid-prodikeys\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [26 x i8] c"hid_prodikeys.license=GPL\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_prodikeys\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prodikeys\00", [22 x i8] zeroinitializer }, align 32
@pk_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1054, i32 10241, i32 65536 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't alloc descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pk_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hid/hid-prodikeys.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pk_probe._entry_ptr = internal global ptr @pk_probe._entry, section ".printk_index", align 4
@pk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pk_probe._entry_ptr.8 = internal global ptr @pk_probe._entry.7, section ".printk_index", align 4
@pk_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@pk_probe._entry_ptr.11 = internal global ptr @pk_probe._entry.9, section ".printk_index", align 4
@pk_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@pk_probe._entry_ptr.14 = internal global ptr @pk_probe._entry.12, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcmidi_snd_initialise.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcmidi_snd_initialise.ops = internal global { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @pcmidi_snd_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create pc-midi sound card\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcmidi_snd_initialise\00", [42 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr = internal global ptr @pcmidi_snd_initialise._entry, section ".printk_index", align 4
@pcmidi_snd_initialise._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create pc-midi sound device: error %d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.19 = internal global ptr @pcmidi_snd_initialise._entry.17, section ".printk_index", align 4
@pcmidi_snd_initialise._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create pc-midi rawmidi device: error %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.22 = internal global ptr @pcmidi_snd_initialise._entry.20, section ".printk_index", align 4
@pcmidi_in_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @pcmidi_in_open, ptr @pcmidi_in_close, ptr @pcmidi_in_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.4, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create sysfs attribute channel: error %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.25 = internal global ptr @pcmidi_snd_initialise._entry.23, section ".printk_index", align 4
@pcmidi_snd_initialise._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.4, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create sysfs attribute sustain: error %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.28 = internal global ptr @pcmidi_snd_initialise._entry.26, section ".printk_index", align 4
@pcmidi_snd_initialise._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.4, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to create sysfs attribute octave: error %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.31 = internal global ptr @pcmidi_snd_initialise._entry.29, section ".printk_index", align 4
@pcmidi_snd_initialise.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pm->rawmidi_in_lock\00", [43 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.16, ptr @.str.4, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to find output report\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.35 = internal global ptr @pcmidi_snd_initialise._entry.33, section ".printk_index", align 4
@pcmidi_snd_initialise._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.4, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013hid_prodikeys: hid-prodikeys: failed to register pc-midi sound card: error %d\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.38 = internal global ptr @pcmidi_snd_initialise._entry.36, section ".printk_index", align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@pcmidi_snd_initialise._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.4, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: pcmidi_snd_initialise finished ok\0A\00", [55 x i8] zeroinitializer }, align 32
@pcmidi_snd_initialise._entry_ptr.41 = internal global ptr @pcmidi_snd_initialise._entry.39, section ".printk_index", align 4
@pcmidi_in_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: pcmidi in open\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcmidi_in_open\00", [17 x i8] zeroinitializer }, align 32
@pcmidi_in_open._entry_ptr = internal global ptr @pcmidi_in_open._entry, section ".printk_index", align 4
@pcmidi_in_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: pcmidi in close\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcmidi_in_close\00", [16 x i8] zeroinitializer }, align 32
@pcmidi_in_close._entry_ptr = internal global ptr @pcmidi_in_close._entry, section ".printk_index", align 4
@pcmidi_in_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: pcmidi in trigger %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmidi_in_trigger\00", [46 x i8] zeroinitializer }, align 32
@pcmidi_in_trigger._entry_ptr = internal global ptr @pcmidi_in_trigger._entry, section ".printk_index", align 4
@dev_attr_channel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_channel, ptr @store_channel }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@show_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: pcmidi sysfs read channel=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"show_channel\00", [19 x i8] zeroinitializer }, align 32
@show_channel._entry_ptr = internal global ptr @show_channel._entry, section ".printk_index", align 4
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%u (min:%u, max:%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@store_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: pcmidi sysfs write channel=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"store_channel\00", [18 x i8] zeroinitializer }, align 32
@store_channel._entry_ptr = internal global ptr @store_channel._entry, section ".printk_index", align 4
@dev_attr_sustain = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sustain, ptr @store_sustain }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sustain\00", [24 x i8] zeroinitializer }, align 32
@show_sustain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: pcmidi sysfs read sustain=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"show_sustain\00", [19 x i8] zeroinitializer }, align 32
@show_sustain._entry_ptr = internal global ptr @show_sustain._entry, section ".printk_index", align 4
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%u (off:%u, max:%u (ms))\0A\00", [38 x i8] zeroinitializer }, align 32
@store_sustain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: pcmidi sysfs write sustain=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"store_sustain\00", [18 x i8] zeroinitializer }, align 32
@store_sustain._entry_ptr = internal global ptr @store_sustain._entry, section ".printk_index", align 4
@dev_attr_octave = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_octave, ptr @store_octave }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"octave\00", [25 x i8] zeroinitializer }, align 32
@show_octave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: pcmidi sysfs read octave=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"show_octave\00", [20 x i8] zeroinitializer }, align 32
@show_octave._entry_ptr = internal global ptr @show_octave._entry, section ".printk_index", align 4
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d (min:%d, max:%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@store_octave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: pcmidi sysfs write octave=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"store_octave\00", [19 x i8] zeroinitializer }, align 32
@store_octave._entry_ptr = internal global ptr @store_octave._entry, section ".printk_index", align 4
@init_sustain_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&pms->timer)\00", [18 x i8] zeroinitializer }, align 32
@pcmidi_get_output_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"output report is empty\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcmidi_get_output_report\00", [39 x i8] zeroinitializer }, align 32
@pcmidi_get_output_report._entry_ptr = internal global ptr @pcmidi_get_output_report._entry, section ".printk_index", align 4
@pcmidi_get_output_report._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"field count too low\0A\00", [43 x i8] zeroinitializer }, align 32
@pcmidi_get_output_report._entry_ptr.73 = internal global ptr @pcmidi_get_output_report._entry.71, section ".printk_index", align 4
@pcmidi_handle_report1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: pcmidi mode: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcmidi_handle_report1\00", [42 x i8] zeroinitializer }, align 32
@pcmidi_handle_report1._entry_ptr = internal global ptr @pcmidi_handle_report1._entry, section ".printk_index", align 4
@pcmidi_handle_report1._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: pcmidi mode: %d octave: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pcmidi_handle_report1._entry_ptr.78 = internal global ptr @pcmidi_handle_report1._entry.76, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pcmidi_handle_report4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.79, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcmidi_handle_report4\00", [42 x i8] zeroinitializer }, align 32
@pcmidi_handle_report4._entry_ptr = internal global ptr @pcmidi_handle_report4._entry, section ".printk_index", align 4
@pcmidi_handle_report4._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.79, ptr @.str.4, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcmidi_handle_report4._entry_ptr.81 = internal global ptr @pcmidi_handle_report4._entry.80, section ".printk_index", align 4
@pcmidi_handle_report4._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.79, ptr @.str.4, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcmidi_handle_report4._entry_ptr.83 = internal global ptr @pcmidi_handle_report4._entry.82, section ".printk_index", align 4
@pk_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 751, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fixing up pc-midi keyboard report descriptor\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pk_report_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pk_report_fixup._entry_ptr = internal global ptr @pk_report_fixup._entry, section ".printk_index", align 4
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PC-MIDI\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PC-MIDI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.88 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Prodikeys PC-MIDI Keyboard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [23 x i64] [i64 21, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"pk_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 889, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 86, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 87, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 88, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 898, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 890, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"pk_devices\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 881, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 815, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 823, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 836, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 846, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 603, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 608, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 628, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 637, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 650, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"pcmidi_in_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 595, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 666, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 674, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 682, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 687, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 692, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 699, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 704, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 575, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 582, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 590, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"dev_attr_channel\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 128, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 105, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 107, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 120, i32 18 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 121, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"dev_attr_sustain\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 167, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 142, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 144, i32 22 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 158, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [16 x i8] c"dev_attr_octave\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 205, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 181, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 183, i32 22 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 196, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 198, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 255, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 282, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 286, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 314, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 322, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 415, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 418, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 423, i32 5 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [31 x i8] c"../drivers/hid/hid-prodikeys.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 750, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [7 x i8] c"str.87\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [7 x i8] c"str.88\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_enable239, ptr @__UNIQUE_ID_enabletype236, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id238, ptr @__UNIQUE_ID_idtype235, ptr @__UNIQUE_ID_index237, ptr @__UNIQUE_ID_indextype234, ptr @__UNIQUE_ID_license242, ptr @__exitcall_pk_driver_exit, ptr @__initcall__kmod_hid_prodikeys__240_898_pk_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @pcmidi_get_output_report._entry, ptr @pcmidi_get_output_report._entry.71, ptr @pcmidi_get_output_report._entry_ptr, ptr @pcmidi_get_output_report._entry_ptr.73, ptr @pcmidi_handle_report1._entry, ptr @pcmidi_handle_report1._entry.76, ptr @pcmidi_handle_report1._entry_ptr, ptr @pcmidi_handle_report1._entry_ptr.78, ptr @pcmidi_handle_report4._entry, ptr @pcmidi_handle_report4._entry.80, ptr @pcmidi_handle_report4._entry.82, ptr @pcmidi_handle_report4._entry_ptr, ptr @pcmidi_handle_report4._entry_ptr.81, ptr @pcmidi_handle_report4._entry_ptr.83, ptr @pcmidi_in_close._entry, ptr @pcmidi_in_close._entry_ptr, ptr @pcmidi_in_open._entry, ptr @pcmidi_in_open._entry_ptr, ptr @pcmidi_in_trigger._entry, ptr @pcmidi_in_trigger._entry_ptr, ptr @pcmidi_snd_initialise._entry, ptr @pcmidi_snd_initialise._entry.17, ptr @pcmidi_snd_initialise._entry.20, ptr @pcmidi_snd_initialise._entry.23, ptr @pcmidi_snd_initialise._entry.26, ptr @pcmidi_snd_initialise._entry.29, ptr @pcmidi_snd_initialise._entry.33, ptr @pcmidi_snd_initialise._entry.36, ptr @pcmidi_snd_initialise._entry.39, ptr @pcmidi_snd_initialise._entry_ptr, ptr @pcmidi_snd_initialise._entry_ptr.19, ptr @pcmidi_snd_initialise._entry_ptr.22, ptr @pcmidi_snd_initialise._entry_ptr.25, ptr @pcmidi_snd_initialise._entry_ptr.28, ptr @pcmidi_snd_initialise._entry_ptr.31, ptr @pcmidi_snd_initialise._entry_ptr.35, ptr @pcmidi_snd_initialise._entry_ptr.38, ptr @pcmidi_snd_initialise._entry_ptr.41, ptr @pk_driver_exit, ptr @pk_probe._entry, ptr @pk_probe._entry.12, ptr @pk_probe._entry.7, ptr @pk_probe._entry.9, ptr @pk_probe._entry_ptr, ptr @pk_probe._entry_ptr.11, ptr @pk_probe._entry_ptr.14, ptr @pk_probe._entry_ptr.8, ptr @pk_report_fixup._entry, ptr @pk_report_fixup._entry_ptr, ptr @show_channel._entry, ptr @show_channel._entry_ptr, ptr @show_octave._entry, ptr @show_octave._entry_ptr, ptr @show_sustain._entry, ptr @show_sustain._entry_ptr, ptr @store_channel._entry, ptr @store_channel._entry_ptr, ptr @store_octave._entry, ptr @store_octave._entry_ptr, ptr @store_sustain._entry, ptr @store_sustain._entry_ptr, ptr @pk_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @.str.1, ptr @pk_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, ptr @.str.13, ptr @pcmidi_snd_initialise.dev, ptr @pcmidi_snd_initialise.ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @pcmidi_in_ops, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @pcmidi_snd_initialise.__key, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @dev_attr_channel, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @dev_attr_sustain, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @dev_attr_octave, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @init_sustain_timers.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @str, ptr @str.87, ptr @str.88], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_in_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_snd_initialise._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_in_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_in_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_in_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sustain to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_sustain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_sustain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_octave to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_octave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_octave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sustain_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_get_output_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_get_output_report._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_handle_report1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_handle_report1._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_handle_report4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_handle_report4._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmidi_handle_report4._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pk_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.88 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @pk_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @pk_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pk_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %card.i = alloca ptr, align 4
  %rwmidi.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %5, i32 -28
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %9 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hdev6 = getelementptr inbounds %struct.pk_device, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %hdev6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdev, ptr %hdev6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2068) #14
  %cmp8 = icmp eq ptr %call7.i.i72, null
  br i1 %cmp8, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #15
  br label %err_free_pk

if.end15:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %call7.i.i72, align 8
  %pm17 = getelementptr inbounds %struct.pk_device, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %pm17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i72, ptr %pm17, align 8
  %ifnum18 = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 1
  %15 = ptrtoint ptr %ifnum18 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %ifnum18, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #15
  br label %err_free

if.end25:                                         ; preds = %if.end15
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %quirks28 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %17 = ptrtoint ptr %quirks28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks28, align 8
  %or = or i32 %18, 8
  store i32 %or, ptr %quirks28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %call30 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  br label %err_free

if.end37:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #11
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rwmidi.i) #11
  %20 = ptrtoint ptr %rwmidi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %rwmidi.i, align 4, !annotation !227
  %21 = ptrtoint ptr %ifnum18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ifnum18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.not.i = icmp eq i16 %22, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end37.pcmidi_snd_initialise.exit.thread_crit_edge

if.end37.pcmidi_snd_initialise.exit.thread_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_snd_initialise.exit.thread

if.end.i:                                         ; preds = %if.end37
  %23 = load i32, ptr @pcmidi_snd_initialise.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %23)
  %cmp2.i = icmp sgt i32 %23, 31
  br i1 %cmp2.i, label %if.end.i.pcmidi_snd_initialise.exit.thread77_crit_edge, label %if.end5.i

if.end.i.pcmidi_snd_initialise.exit.thread77_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_snd_initialise.exit.thread77

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr [32 x i8], ptr @enable, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add nsw i32 %23, 1
  store i32 %inc.i, ptr @pcmidi_snd_initialise.dev, align 4
  br label %pcmidi_snd_initialise.exit.thread77

if.end7.i:                                        ; preds = %if.end5.i
  %26 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i72, align 8
  %hdev.i = getelementptr inbounds %struct.pk_device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  %arrayidx8.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %23
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr [32 x ptr], ptr @id, i32 0, i32 %23
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.i, align 4
  %call.i73 = call i32 @snd_card_new(ptr noundef %dev.i, i32 noundef %31, ptr noundef %33, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp10.i = icmp slt i32 %call.i73, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %fail.i

if.end14.i:                                       ; preds = %if.end7.i
  %34 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i, align 4
  %card15.i = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 13
  %36 = ptrtoint ptr %card15.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %card15.i, align 4
  %call16.i = call i32 @snd_device_new(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %call7.i.i72, ptr noundef nonnull @pcmidi_snd_initialise.ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call16.i) #15
  br label %fail.i

if.end25.i:                                       ; preds = %if.end14.i
  %37 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %driver.i, ptr @str, i32 16)
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %shortname.i, ptr @str.87, i32 32)
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 4
  %41 = call ptr @memcpy(ptr %longname.i, ptr @str.88, i32 80)
  %call33.i = call i32 @snd_rawmidi_new(ptr noundef %38, ptr noundef %shortname.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rwmidi.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.end42.i

do.end39.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call33.i) #15
  br label %fail.i

if.end42.i:                                       ; preds = %if.end25.i
  %42 = ptrtoint ptr %rwmidi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rwmidi.i, align 4
  %rwmidi43.i = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 14
  %44 = ptrtoint ptr %rwmidi43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %rwmidi43.i, align 8
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %43, i32 0, i32 5
  %45 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i, align 4
  %shortname45.i = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 3
  %call47.i = call ptr @strncpy(ptr noundef %name.i, ptr noundef %shortname45.i, i32 noundef 80) #11
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %43, i32 0, i32 3
  %47 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %info_flags.i, align 8
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %43, i32 0, i32 9
  %48 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i72, ptr %private_data.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %43, i32 noundef 1, ptr noundef nonnull @pcmidi_in_ops) #11
  %49 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i72, align 8
  %hdev49.i = getelementptr inbounds %struct.pk_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %hdev49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev49.i, align 4
  %dev50.i = getelementptr inbounds %struct.hid_device, ptr %52, i32 0, i32 18
  %call51.i = call i32 @device_create_file(ptr noundef %dev50.i, ptr noundef nonnull @dev_attr_channel) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %do.end57.i, label %if.end60.i

do.end57.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call51.i) #15
  br label %fail.i

if.end60.i:                                       ; preds = %if.end42.i
  %53 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i72, align 8
  %hdev62.i = getelementptr inbounds %struct.pk_device, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %hdev62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev62.i, align 4
  %dev63.i = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 18
  %call64.i = call i32 @device_create_file(ptr noundef %dev63.i, ptr noundef nonnull @dev_attr_sustain) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %do.end70.i, label %if.end73.i

do.end70.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call64.i) #15
  br label %fail_attr_sustain.i

if.end73.i:                                       ; preds = %if.end60.i
  %57 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i72, align 8
  %hdev75.i = getelementptr inbounds %struct.pk_device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %hdev75.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hdev75.i, align 4
  %dev76.i = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 18
  %call77.i = call i32 @device_create_file(ptr noundef %dev76.i, ptr noundef nonnull @dev_attr_octave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %do.end83.i, label %do.body87.i

do.end83.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call77.i) #15
  br label %fail_attr_octave.i

do.body87.i:                                      ; preds = %if.end73.i
  %rawmidi_in_lock.i = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %rawmidi_in_lock.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @pcmidi_snd_initialise.__key, i16 noundef signext 3) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body87.i
  %i.07.i.i = phi i32 [ 0, %do.body87.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 9, i32 %i.07.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx.i.i, align 4
  %pm1.i.i = getelementptr %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 9, i32 %i.07.i.i, i32 1
  %62 = ptrtoint ptr %pm1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i72, ptr %pm1.i.i, align 4
  %timer.i.i = getelementptr %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 9, i32 %i.07.i.i, i32 2
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @pcmidi_sustained_note_release, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_sustain_timers.__key) #11
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %init_sustain_timers.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

init_sustain_timers.exit.i:                       ; preds = %for.body.i.i
  %63 = ptrtoint ptr %ifnum18 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ifnum18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %64)
  %cmp.not.i.i = icmp eq i16 %64, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %init_sustain_timers.exit.i.if.end100.i_crit_edge

init_sustain_timers.exit.i.if.end100.i_crit_edge: ; preds = %init_sustain_timers.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i

if.end.i.i:                                       ; preds = %init_sustain_timers.exit.i
  %65 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i72, align 8
  %hdev1.i.i.i = getelementptr inbounds %struct.pk_device, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %hdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdev1.i.i.i, align 4
  %report_list.i.i.i = getelementptr %struct.hid_device, ptr %68, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %report.0.in.i.i.i = phi ptr [ %report_list.i.i.i, %if.end.i.i ], [ %report.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %report.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %report.0.i.i.i = load ptr, ptr %report.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %report.0.i.i.i, %report_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end97.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end97.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %id.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id.i.i.i, align 4
  %cmp5.i.i.i = icmp eq i32 %71, 6
  br i1 %cmp5.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %maxfield.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %maxfield.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %maxfield.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp6.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp6.i.i.i, label %if.end.i.i.i.do.end97.sink.split.i_crit_edge, label %if.end8.i.i.i

if.end.i.i.i.do.end97.sink.split.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97.sink.split.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %field.i.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %field.i.i.i, align 4
  %report_count.i.i.i = getelementptr inbounds %struct.hid_field, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %report_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %report_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp10.not.i.i.i = icmp eq i32 %77, 2
  br i1 %cmp10.not.i.i.i, label %if.end5.i.i, label %if.end8.i.i.i.do.end97.sink.split.i_crit_edge

if.end8.i.i.i.do.end97.sink.split.i_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97.sink.split.i

if.end5.i.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcmidi_report6.i.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 2
  %78 = ptrtoint ptr %pcmidi_report6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %report.0.i.i.i, ptr %pcmidi_report6.i.i.i, align 8
  %79 = ptrtoint ptr %hdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hdev1.i.i.i, align 4
  %81 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %field.i.i.i, align 4
  %value.i.i.i = getelementptr inbounds %struct.hid_field, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %value.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %84, align 4
  %86 = load ptr, ptr %field.i.i.i, align 4
  %value5.i.i.i = getelementptr inbounds %struct.hid_field, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %value5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %value5.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %88, i32 1
  %89 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 193, ptr %arrayidx6.i.i.i, align 4
  call void @hid_hw_request(ptr noundef %80, ptr noundef %report.0.i.i.i, i32 noundef 9) #11
  br label %if.end100.i

do.end97.sink.split.i:                            ; preds = %if.end8.i.i.i.do.end97.sink.split.i_crit_edge, %if.end.i.i.i.do.end97.sink.split.i_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.69, %if.end.i.i.i.do.end97.sink.split.i_crit_edge ], [ @.str.72, %if.end8.i.i.i.do.end97.sink.split.i_crit_edge ]
  %dev15.i.i.i = getelementptr inbounds %struct.hid_device, ptr %68, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.i.i, ptr noundef nonnull %.str.72.sink.i) #15
  br label %do.end97.i

do.end97.i:                                       ; preds = %do.end97.sink.split.i, %for.cond.i.i.i.do.end97.i_crit_edge
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %fail_register.i

if.end100.i:                                      ; preds = %if.end5.i.i, %init_sustain_timers.exit.i.if.end100.i_crit_edge
  %90 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card.i, align 4
  %call101.i = call i32 @snd_card_register(ptr noundef %91) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %cmp102.i = icmp slt i32 %call101.i, 0
  br i1 %cmp102.i, label %do.end107.i, label %do.body111.i

do.end107.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call101.i) #15
  br label %fail_register.i

do.body111.i:                                     ; preds = %if.end100.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %92 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool112.not.i = icmp eq i32 %92, 0
  br i1 %tobool112.not.i, label %do.body111.i.pcmidi_snd_initialise.exit.thread_crit_edge, label %do.end116.i

do.body111.i.pcmidi_snd_initialise.exit.thread_crit_edge: ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_snd_initialise.exit.thread

do.end116.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #13
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4) #15
  br label %pcmidi_snd_initialise.exit.thread

fail_register.i:                                  ; preds = %do.end107.i, %do.end97.i
  %err.0.i = phi i32 [ -19, %do.end97.i ], [ %call101.i, %do.end107.i ]
  br label %for.body.i177.i

for.body.i177.i:                                  ; preds = %for.body.i177.i.for.body.i177.i_crit_edge, %fail_register.i
  %i.04.i.i = phi i32 [ 0, %fail_register.i ], [ %inc.i175.i, %for.body.i177.i.for.body.i177.i_crit_edge ]
  %arrayidx.i173.i = getelementptr %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 9, i32 %i.04.i.i
  %93 = ptrtoint ptr %arrayidx.i173.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %arrayidx.i173.i, align 4
  %timer.i174.i = getelementptr %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 9, i32 %i.04.i.i, i32 2
  %call.i.i = call i32 @del_timer_sync(ptr noundef %timer.i174.i) #11
  %inc.i175.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i176.i = icmp eq i32 %inc.i175.i, 32
  br i1 %exitcond.not.i176.i, label %stop_sustain_timers.exit.i, label %for.body.i177.i.for.body.i177.i_crit_edge

for.body.i177.i.for.body.i177.i_crit_edge:        ; preds = %for.body.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i177.i

stop_sustain_timers.exit.i:                       ; preds = %for.body.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call7.i.i72, align 8
  %hdev123.i = getelementptr inbounds %struct.pk_device, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %hdev123.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdev123.i, align 4
  %dev124.i = getelementptr inbounds %struct.hid_device, ptr %97, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev124.i, ptr noundef nonnull @dev_attr_octave) #11
  br label %fail_attr_octave.i

fail_attr_octave.i:                               ; preds = %stop_sustain_timers.exit.i, %do.end83.i
  %err.1.i = phi i32 [ %call77.i, %do.end83.i ], [ %err.0.i, %stop_sustain_timers.exit.i ]
  %98 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i72, align 8
  %hdev126.i = getelementptr inbounds %struct.pk_device, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %hdev126.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hdev126.i, align 4
  %dev127.i = getelementptr inbounds %struct.hid_device, ptr %101, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev127.i, ptr noundef nonnull @dev_attr_sustain) #11
  br label %fail_attr_sustain.i

fail_attr_sustain.i:                              ; preds = %fail_attr_octave.i, %do.end70.i
  %err.2.i = phi i32 [ %call64.i, %do.end70.i ], [ %err.1.i, %fail_attr_octave.i ]
  %102 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i72, align 8
  %hdev129.i = getelementptr inbounds %struct.pk_device, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %hdev129.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hdev129.i, align 4
  %dev130.i = getelementptr inbounds %struct.hid_device, ptr %105, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev130.i, ptr noundef nonnull @dev_attr_channel) #11
  br label %fail.i

fail.i:                                           ; preds = %fail_attr_sustain.i, %do.end57.i, %do.end39.i, %do.end22.i, %do.end.i
  %err.3.i = phi i32 [ -12, %do.end.i ], [ %call16.i, %do.end22.i ], [ %call33.i, %do.end39.i ], [ %call51.i, %do.end57.i ], [ %err.2.i, %fail_attr_sustain.i ]
  %card131.i = getelementptr inbounds %struct.pcmidi_snd, ptr %call7.i.i72, i32 0, i32 13
  %106 = ptrtoint ptr %card131.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card131.i, align 4
  %tobool132.not.i = icmp eq ptr %107, null
  br i1 %tobool132.not.i, label %fail.i.pcmidi_snd_initialise.exit_crit_edge, label %if.then133.i

fail.i.pcmidi_snd_initialise.exit_crit_edge:      ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_snd_initialise.exit

if.then133.i:                                     ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  %call135.i = call i32 @snd_card_free(ptr noundef nonnull %107) #11
  %108 = ptrtoint ptr %card131.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %card131.i, align 4
  br label %pcmidi_snd_initialise.exit

pcmidi_snd_initialise.exit.thread:                ; preds = %do.end116.i, %do.body111.i.pcmidi_snd_initialise.exit.thread_crit_edge, %if.end37.pcmidi_snd_initialise.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rwmidi.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #11
  br label %cleanup

pcmidi_snd_initialise.exit.thread77:              ; preds = %if.then6.i, %if.end.i.pcmidi_snd_initialise.exit.thread77_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end.i.pcmidi_snd_initialise.exit.thread77_crit_edge ], [ -2, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rwmidi.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #11
  br label %err_stop

pcmidi_snd_initialise.exit:                       ; preds = %if.then133.i, %fail.i.pcmidi_snd_initialise.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rwmidi.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i)
  %cmp39 = icmp slt i32 %err.3.i, 0
  br i1 %cmp39, label %pcmidi_snd_initialise.exit.err_stop_crit_edge, label %pcmidi_snd_initialise.exit.cleanup_crit_edge

pcmidi_snd_initialise.exit.cleanup_crit_edge:     ; preds = %pcmidi_snd_initialise.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pcmidi_snd_initialise.exit.err_stop_crit_edge:    ; preds = %pcmidi_snd_initialise.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_stop

err_stop:                                         ; preds = %pcmidi_snd_initialise.exit.err_stop_crit_edge, %pcmidi_snd_initialise.exit.thread77
  %retval.0.i80 = phi i32 [ %retval.0.i.ph, %pcmidi_snd_initialise.exit.thread77 ], [ %err.3.i, %pcmidi_snd_initialise.exit.err_stop_crit_edge ]
  call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %err_free

err_free:                                         ; preds = %err_stop, %do.end35, %do.end23
  %ret.0 = phi i32 [ %call.i, %do.end23 ], [ %call30, %do.end35 ], [ %retval.0.i80, %err_stop ]
  call void @kfree(ptr noundef nonnull %call7.i.i72) #11
  br label %err_free_pk

err_free_pk:                                      ; preds = %err_free, %do.end13
  %ret.1 = phi i32 [ -12, %do.end13 ], [ %ret.0, %err_free ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_pk, %pcmidi_snd_initialise.exit.cleanup_crit_edge, %pcmidi_snd_initialise.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.1, %err_free_pk ], [ -22, %entry.cleanup_crit_edge ], [ 0, %pcmidi_snd_initialise.exit.cleanup_crit_edge ], [ 0, %pcmidi_snd_initialise.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pk_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm1 = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %card.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.pcmidi_snd_terminate.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.pcmidi_snd_terminate.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_snd_terminate.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.04.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx.i.i, align 4
  %timer.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.04.i.i, i32 2
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #11
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %stop_sustain_timers.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

stop_sustain_timers.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %hdev.i = getelementptr inbounds %struct.pk_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_channel) #11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %hdev2.i = getelementptr inbounds %struct.pk_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev2.i, align 4
  %dev3.i = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev3.i, ptr noundef nonnull @dev_attr_sustain) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %hdev5.i = getelementptr inbounds %struct.pk_device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hdev5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev5.i, align 4
  %dev6.i = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev6.i, ptr noundef nonnull @dev_attr_octave) #11
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %call.i = tail call i32 @snd_card_disconnect(ptr noundef %20) #11
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i, align 4
  %call9.i = tail call i32 @snd_card_free_when_closed(ptr noundef %22) #11
  br label %pcmidi_snd_terminate.exit

pcmidi_snd_terminate.exit:                        ; preds = %stop_sustain_timers.exit.i, %if.then.pcmidi_snd_terminate.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %pcmidi_snd_terminate.exit, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pk_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  %buffer.i.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm, align 4
  %ifnum = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ifnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp eq i16 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %conv2 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv2)
  %cmp3 = icmp eq i32 %7, %conv2
  br i1 %cmp3, label %if.then5, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.then
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then5.if.end10_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb3.i
  ]

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

sw.bb.i:                                          ; preds = %if.then5
  %arrayidx.i.i = getelementptr i8, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %data, i32 2
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %conv.i.i, 16
  %16 = shl nuw nsw i32 %conv2.i.i, 8
  %shl3.i.i = or i32 %16, %15
  %arrayidx4.i.i = getelementptr i8, ptr %data, i32 3
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %18 to i32
  %or6.i.i = or i32 %shl3.i.i, %conv5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %19 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end10.i.i_crit_edge, label %do.end.i.i

sw.bb.i.do.end10.i.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %midi_mode.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %midi_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %midi_mode.i.i, align 4
  %conv8.i.i = zext i16 %21 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.4, i32 noundef %conv8.i.i) #15
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %do.end.i.i, %sw.bb.i.do.end10.i.i_crit_edge
  %midi_mode11.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %midi_mode11.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %midi_mode11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool13.not.i.i = icmp ne i16 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %or6.i.i)
  %cmp.i.i = icmp eq i32 %or6.i.i, 16384
  %or.cond.i.i = select i1 %tobool13.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then15.i.i, label %if.else.i.i

if.then15.i.i:                                    ; preds = %do.end10.i.i
  %midi_octave.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %midi_octave.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %midi_octave.i.i, align 4
  %dec.i.i = add i16 %25, -1
  %26 = tail call i16 @llvm.smax.i16(i16 %dec.i.i, i16 -2) #11
  %27 = ptrtoint ptr %midi_octave.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %midi_octave.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool24.not.i.i, label %if.then15.i.i.if.end10_crit_edge, label %do.end28.i.i

if.then15.i.i.if.end10_crit_edge:                 ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end28.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv31.i.i = zext i16 %23 to i32
  %conv33.i.i = sext i16 %26 to i32
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.4, i32 noundef %conv31.i.i, i32 noundef %conv33.i.i) #15
  br label %if.end10

if.else.i.i:                                      ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or6.i.i)
  %cmp42.i.i = icmp eq i32 %or6.i.i, 4
  %or.cond62.i.i = select i1 %tobool13.not.i.i, i1 %cmp42.i.i, i1 false
  br i1 %or.cond62.i.i, label %if.then44.i.i, label %if.else.i.i.if.end10_crit_edge

if.else.i.i.if.end10_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then44.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %midi_sustain_mode.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %midi_sustain_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %midi_sustain_mode.i.i, align 2
  %31 = xor i16 %30, 1
  store i16 %31, ptr %midi_sustain_mode.i.i, align 2
  br label %if.end10

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %32 = icmp ult i32 %size, 3
  br i1 %32, label %sw.bb1.i.if.end10_crit_edge, label %for.body.lr.ph.i.i

sw.bb1.i.if.end10_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.lr.ph.i.i:                               ; preds = %sw.bb1.i
  %sub.i.i = add i32 %size, -1
  %div.i.i = sdiv i32 %sub.i.i, 2
  %midi_channel20.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 7
  %midi_octave27.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 8
  %midi_sustain_mode.i9.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 5
  %33 = getelementptr inbounds [3 x i8], ptr %buffer.i.i.i, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %buffer.i.i.i, i32 0, i32 2
  %rawmidi_in_lock.i.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 12
  %in_substream.i.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 15
  %in_triggered.i.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 17
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %pcmidi_send_note.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %j.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc51.i.i, %pcmidi_send_note.exit.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %j.06.i.i, 1
  %add.i.i = or i32 %mul.i.i, 1
  %arrayidx.i10.i = getelementptr i8, ptr %data, i32 %add.i.i
  %35 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i, align 1
  %add2.i.i = add i32 %mul.i.i, 2
  %arrayidx3.i.i = getelementptr i8, ptr %data, i32 %add2.i.i
  %37 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %36)
  %cmp4.i.i = icmp ult i8 %36, -127
  %39 = ptrtoint ptr %midi_channel20.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %midi_channel20.i.i, align 2
  %conv6.i.i = trunc i16 %40 to i8
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.else.i12.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add7.i.i = add i8 %conv6.i.i, -112
  %add11.i.i = add i8 %36, -24
  %41 = ptrtoint ptr %midi_octave27.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %midi_octave27.i.i, align 4
  %conv12.i.i = trunc i16 %42 to i8
  %mul13.i.i = mul i8 %conv12.i.i, 12
  %add14.i.i = add i8 %add11.i.i, %mul13.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp17.i.i = icmp eq i8 %38, 0
  %spec.store.select.i.i = select i1 %cmp17.i.i, i8 1, i8 %38
  br label %if.end49.i.i

if.else.i12.i:                                    ; preds = %for.body.i.i
  %add22.i.i = xor i8 %conv6.i.i, -128
  %add26.i.i = add i8 %36, -88
  %43 = ptrtoint ptr %midi_octave27.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %midi_octave27.i.i, align 4
  %conv28.i.i = trunc i16 %44 to i8
  %mul29.i.i = mul i8 %conv28.i.i, 12
  %add30.i.i = add i8 %add26.i.i, %mul29.i.i
  %45 = ptrtoint ptr %midi_sustain_mode.i9.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %midi_sustain_mode.i9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i11.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i11.i, label %if.else.i12.i.if.end49.i.i_crit_edge, label %if.else.i12.i.for.body36.i.i_crit_edge

if.else.i12.i.for.body36.i.i_crit_edge:           ; preds = %if.else.i12.i
  br label %for.body36.i.i

if.else.i12.i.if.end49.i.i_crit_edge:             ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i.i

for.body36.i.i:                                   ; preds = %for.inc.i.i.for.body36.i.i_crit_edge, %if.else.i12.i.for.body36.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body36.i.i_crit_edge ], [ 0, %if.else.i12.i.for.body36.i.i_crit_edge ]
  %arrayidx37.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.03.i.i
  %47 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool38.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %for.inc.i.i

if.then39.i.i:                                    ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %status40.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.03.i.i, i32 3
  %49 = ptrtoint ptr %status40.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %add22.i.i, ptr %status40.i.i, align 4
  %note41.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.03.i.i, i32 4
  %50 = ptrtoint ptr %note41.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %add30.i.i, ptr %note41.i.i, align 1
  %velocity42.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.03.i.i, i32 5
  %51 = ptrtoint ptr %velocity42.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %38, ptr %velocity42.i.i, align 2
  %52 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %arrayidx37.i.i, align 4
  %timer.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 9, i32 %i.03.i.i, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %midi_sustain.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %midi_sustain.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %midi_sustain.i.i, align 4
  %conv44.i.i = zext i16 %55 to i32
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv44.i.i) #11
  %add45.i.i = add i32 %call2.i.i.i, %53
  %call46.i.i = call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add45.i.i) #11
  br label %if.end10

for.inc.i.i:                                      ; preds = %for.body36.i.i
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end49.i.i_crit_edge, label %for.inc.i.i.for.body36.i.i_crit_edge

for.inc.i.i.for.body36.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36.i.i

for.inc.i.i.if.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %for.inc.i.i.if.end49.i.i_crit_edge, %if.else.i12.i.if.end49.i.i_crit_edge, %if.then.i.i
  %status.0.i.i = phi i8 [ %add7.i.i, %if.then.i.i ], [ %add22.i.i, %if.else.i12.i.if.end49.i.i_crit_edge ], [ %add22.i.i, %for.inc.i.i.if.end49.i.i_crit_edge ]
  %note.0.i.i = phi i8 [ %add14.i.i, %if.then.i.i ], [ %add30.i.i, %if.else.i12.i.if.end49.i.i_crit_edge ], [ %add30.i.i, %for.inc.i.i.if.end49.i.i_crit_edge ]
  %velocity.0.i.i = phi i8 [ %spec.store.select.i.i, %if.then.i.i ], [ %38, %if.else.i12.i.if.end49.i.i_crit_edge ], [ %38, %for.inc.i.i.if.end49.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i.i.i) #11
  %56 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %status.0.i.i, ptr %buffer.i.i.i, align 1
  %57 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %note.0.i.i, ptr %33, align 1
  %58 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %velocity.0.i.i, ptr %34, align 1
  %call4.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rawmidi_in_lock.i.i.i) #11
  %59 = ptrtoint ptr %in_substream.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %in_substream.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.end49.i.i.pcmidi_send_note.exit.i.i_crit_edge, label %if.end.i1.i.i

if.end49.i.i.pcmidi_send_note.exit.i.i_crit_edge: ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_send_note.exit.i.i

if.end.i1.i.i:                                    ; preds = %if.end49.i.i
  %number.i.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number.i.i.i, align 4
  %div3.i.i.i.i = lshr i32 %62, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %in_triggered.i.i.i, i32 %div3.i.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %62, 31
  %65 = shl nuw i32 1, %and.i.i.i.i
  %66 = and i32 %65, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool9.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool9.not.i.i.i, label %if.end.i1.i.i.pcmidi_send_note.exit.i.i_crit_edge, label %if.end11.i.i.i

if.end.i1.i.i.pcmidi_send_note.exit.i.i_crit_edge: ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_send_note.exit.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i.i.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %60, ptr noundef nonnull %buffer.i.i.i, i32 noundef 3) #11
  br label %pcmidi_send_note.exit.i.i

pcmidi_send_note.exit.i.i:                        ; preds = %if.end11.i.i.i, %if.end.i1.i.i.pcmidi_send_note.exit.i.i_crit_edge, %if.end49.i.i.pcmidi_send_note.exit.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rawmidi_in_lock.i.i.i, i32 noundef %call4.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i.i.i) #11
  %inc51.i.i = add nuw i32 %j.06.i.i, 1
  %exitcond10.not.i.i = icmp eq i32 %inc51.i.i, %umax.i.i
  br i1 %exitcond10.not.i.i, label %pcmidi_send_note.exit.i.i.if.end10_crit_edge, label %pcmidi_send_note.exit.i.i.for.body.i.i_crit_edge

pcmidi_send_note.exit.i.i.for.body.i.i_crit_edge: ; preds = %pcmidi_send_note.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

pcmidi_send_note.exit.i.i.if.end10_crit_edge:     ; preds = %pcmidi_send_note.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

sw.bb3.i:                                         ; preds = %if.then5
  %arrayidx.i13.i = getelementptr i8, ptr %data, i32 1
  %67 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i13.i, align 1
  %conv.i14.i = zext i8 %68 to i32
  %arrayidx1.i15.i = getelementptr i8, ptr %data, i32 2
  %69 = ptrtoint ptr %arrayidx1.i15.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx1.i15.i, align 1
  %conv2.i16.i = zext i8 %70 to i32
  %71 = shl nuw nsw i32 %conv.i14.i, 16
  %72 = shl nuw nsw i32 %conv2.i16.i, 8
  %shl3.i17.i = or i32 %72, %71
  %arrayidx4.i18.i = getelementptr i8, ptr %data, i32 3
  %73 = ptrtoint ptr %arrayidx4.i18.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx4.i18.i, align 1
  %conv5.i19.i = zext i8 %74 to i32
  %or6.i20.i = or i32 %shl3.i17.i, %conv5.i19.i
  %input_ep82.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 3
  br label %for.body.i23.i

for.cond13.preheader.i.i:                         ; preds = %for.inc.i27.i
  %midi_mode45.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 4
  %midi_octave.i21.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 8
  %pcmidi_report6.i8.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 2
  %fn_state.i.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 10
  br label %for.body16.i.i

for.body.i23.i:                                   ; preds = %for.inc.i27.i.for.body.i23.i_crit_edge, %sw.bb3.i
  %bit_index.016.i.i = phi i32 [ 0, %sw.bb3.i ], [ %inc.i25.i, %for.inc.i27.i.for.body.i23.i_crit_edge ]
  %shl8.i.i = shl nuw nsw i32 1, %bit_index.016.i.i
  %and.i.i = and i32 %shl8.i.i, %or6.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i22.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i22.i, label %if.then.i24.i, label %for.body.i23.i.for.inc.i27.i_crit_edge

for.body.i23.i.for.inc.i27.i_crit_edge:           ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27.i

if.then.i24.i:                                    ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %input_ep82.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input_ep82.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 11, i32 %bit_index.016.i.i
  %77 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = zext i16 %78 to i32
  tail call void @input_event(ptr noundef %76, i32 noundef 1, i32 noundef %conv10.i.i, i32 noundef 0) #11
  %79 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %arrayidx9.i.i, align 2
  br label %for.inc.i27.i

for.inc.i27.i:                                    ; preds = %if.then.i24.i, %for.body.i23.i.for.inc.i27.i_crit_edge
  %inc.i25.i = add nuw nsw i32 %bit_index.016.i.i, 1
  %exitcond.not.i26.i = icmp eq i32 %inc.i25.i, 24
  br i1 %exitcond.not.i26.i, label %for.cond13.preheader.i.i, label %for.inc.i27.i.for.body.i23.i_crit_edge

for.inc.i27.i.for.body.i23.i_crit_edge:           ; preds = %for.inc.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i23.i

for.body16.i.i:                                   ; preds = %for.inc104.i.i.for.body16.i.i_crit_edge, %for.cond13.preheader.i.i
  %bit_index.118.i.i = phi i32 [ 0, %for.cond13.preheader.i.i ], [ %inc105.i.i, %for.inc104.i.i.for.body16.i.i_crit_edge ]
  %shl17.i.i = shl nuw nsw i32 1, %bit_index.118.i.i
  %and18.i.i = and i32 %shl17.i.i, %or6.i20.i
  %80 = zext i32 %and18.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and18.i.i, label %for.body16.i.i.for.inc104.i.i_crit_edge [
    i32 16, label %sw.bb.i.i
    i32 131072, label %sw.bb25.i.i
    i32 1048576, label %do.body38.i.i
    i32 4194304, label %for.body16.i.i.if.then98.i.i_crit_edge
    i32 524288, label %sw.bb80.i.i
    i32 262144, label %sw.bb81.i.i
    i32 8388608, label %sw.bb82.i.i
    i32 2097152, label %sw.bb83.i.i
    i32 65536, label %sw.bb84.i.i
    i32 256, label %sw.bb85.i.i
    i32 512, label %sw.bb86.i.i
    i32 1024, label %sw.bb87.i.i
    i32 2048, label %sw.bb88.i.i
    i32 4096, label %sw.bb89.i.i
    i32 8192, label %sw.bb90.i.i
    i32 16384, label %sw.bb91.i.i
    i32 32768, label %sw.bb92.i.i
    i32 1, label %sw.bb93.i.i
    i32 2, label %sw.bb94.i.i
    i32 4, label %sw.bb95.i.i
    i32 8, label %sw.bb96.i.i
  ]

for.body16.i.i.if.then98.i.i_crit_edge:           ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

for.body16.i.i.for.inc104.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.i.i

sw.bb.i.i:                                        ; preds = %for.body16.i.i
  %81 = ptrtoint ptr %fn_state.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %fn_state.i.i, align 4
  %83 = xor i16 %82, 16
  store i16 %83, ptr %fn_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool22.not.i.i = icmp eq i16 %83, 0
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  %hdev1.i1.i.i = getelementptr inbounds %struct.pk_device, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %hdev1.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hdev1.i1.i.i, align 4
  %88 = ptrtoint ptr %pcmidi_report6.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcmidi_report6.i8.i.i, align 4
  %field.i3.i.i = getelementptr inbounds %struct.hid_report, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %field.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %field.i3.i.i, align 4
  %value.i4.i.i = getelementptr inbounds %struct.hid_field, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %value.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %value.i4.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %93, align 4
  %95 = load ptr, ptr %field.i3.i.i, align 4
  %value5.i5.i.i = getelementptr inbounds %struct.hid_field, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %value5.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %value5.i5.i.i, align 4
  %arrayidx6.i6.i.i = getelementptr i32, ptr %97, i32 1
  br i1 %tobool22.not.i.i, label %if.else.i28.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %arrayidx6.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 197, ptr %arrayidx6.i6.i.i, align 4
  tail call void @hid_hw_request(ptr noundef %87, ptr noundef %89, i32 noundef 9) #11
  br label %for.inc104.i.i

if.else.i28.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %arrayidx6.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 198, ptr %arrayidx6.i6.i.i, align 4
  tail call void @hid_hw_request(ptr noundef %87, ptr noundef %89, i32 noundef 9) #11
  br label %for.inc104.i.i

sw.bb25.i.i:                                      ; preds = %for.body16.i.i
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 4
  %hdev1.i7.i.i = getelementptr inbounds %struct.pk_device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %hdev1.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hdev1.i7.i.i, align 4
  %104 = ptrtoint ptr %pcmidi_report6.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcmidi_report6.i8.i.i, align 4
  %field.i9.i.i = getelementptr inbounds %struct.hid_report, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %field.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %field.i9.i.i, align 4
  %value.i10.i.i = getelementptr inbounds %struct.hid_field, ptr %107, i32 0, i32 10
  %108 = ptrtoint ptr %value.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %value.i10.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %109, align 4
  %111 = load ptr, ptr %field.i9.i.i, align 4
  %value5.i11.i.i = getelementptr inbounds %struct.hid_field, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %value5.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %value5.i11.i.i, align 4
  %arrayidx6.i12.i.i = getelementptr i32, ptr %113, i32 1
  %114 = ptrtoint ptr %arrayidx6.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 193, ptr %arrayidx6.i12.i.i, align 4
  tail call void @hid_hw_request(ptr noundef %103, ptr noundef %105, i32 noundef 9) #11
  %115 = ptrtoint ptr %midi_mode45.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %midi_mode45.i.i, align 4
  %117 = xor i16 %116, 1
  store i16 %117, ptr %midi_mode45.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %118 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool29.not.i.i = icmp eq i32 %118, 0
  br i1 %tobool29.not.i.i, label %sw.bb25.i.i.for.inc104.i.i_crit_edge, label %do.end.i31.i

sw.bb25.i.i.for.inc104.i.i_crit_edge:             ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.i.i

do.end.i31.i:                                     ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv33.i29.i = zext i16 %117 to i32
  %call.i30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.4, i32 noundef %conv33.i29.i) #15
  br label %for.inc104.i.i

do.body38.i.i:                                    ; preds = %for.body16.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %119 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool39.not.i.i = icmp eq i32 %119, 0
  br i1 %tobool39.not.i.i, label %do.body38.i.i.do.end50.i.i_crit_edge, label %do.end43.i.i

do.body38.i.i.do.end50.i.i_crit_edge:             ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50.i.i

do.end43.i.i:                                     ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %midi_mode45.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %midi_mode45.i.i, align 4
  %conv46.i.i = zext i16 %121 to i32
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.4, i32 noundef %conv46.i.i) #15
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do.end43.i.i, %do.body38.i.i.do.end50.i.i_crit_edge
  %122 = ptrtoint ptr %midi_mode45.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %midi_mode45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool52.not.i.i = icmp eq i16 %123, 0
  br i1 %tobool52.not.i.i, label %do.end50.i.i.if.then98.i.i_crit_edge, label %if.then53.i.i

do.end50.i.i.if.then98.i.i_crit_edge:             ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

if.then53.i.i:                                    ; preds = %do.end50.i.i
  %124 = ptrtoint ptr %midi_octave.i21.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %midi_octave.i21.i, align 4
  %inc54.i.i = add i16 %125, 1
  %126 = tail call i16 @llvm.smin.i16(i16 %inc54.i.i, i16 2) #11
  %127 = ptrtoint ptr %midi_octave.i21.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %midi_octave.i21.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %128 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool63.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool63.not.i.i, label %if.then53.i.i.for.inc104.i.i_crit_edge, label %do.end67.i.i

if.then53.i.i.for.inc104.i.i_crit_edge:           ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.i.i

do.end67.i.i:                                     ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv70.i.i = zext i16 %123 to i32
  %conv72.i.i = sext i16 %126 to i32
  %call73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.4, i32 noundef %conv70.i.i, i32 noundef %conv72.i.i) #15
  br label %for.inc104.i.i

sw.bb80.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb81.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb82.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb83.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb84.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb85.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb86.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb87.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb88.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb89.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb90.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb91.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb92.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb93.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb94.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb95.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

sw.bb96.i.i:                                      ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98.i.i

if.then98.i.i:                                    ; preds = %sw.bb96.i.i, %sw.bb95.i.i, %sw.bb94.i.i, %sw.bb93.i.i, %sw.bb92.i.i, %sw.bb91.i.i, %sw.bb90.i.i, %sw.bb89.i.i, %sw.bb88.i.i, %sw.bb87.i.i, %sw.bb86.i.i, %sw.bb85.i.i, %sw.bb84.i.i, %sw.bb83.i.i, %sw.bb82.i.i, %sw.bb81.i.i, %sw.bb80.i.i, %do.end50.i.i.if.then98.i.i_crit_edge, %for.body16.i.i.if.then98.i.i_crit_edge
  %key.0.ph.i.i = phi i32 [ 430, %do.end50.i.i.if.then98.i.i_crit_edge ], [ 429, %sw.bb80.i.i ], [ 235, %sw.bb81.i.i ], [ 421, %sw.bb82.i.i ], [ 423, %sw.bb83.i.i ], [ 152, %sw.bb84.i.i ], [ 138, %sw.bb85.i.i ], [ 231, %sw.bb86.i.i ], [ 232, %sw.bb87.i.i ], [ 233, %sw.bb88.i.i ], [ 181, %sw.bb89.i.i ], [ 134, %sw.bb90.i.i ], [ 206, %sw.bb91.i.i ], [ 234, %sw.bb92.i.i ], [ 131, %sw.bb93.i.i ], [ 182, %sw.bb94.i.i ], [ 432, %sw.bb95.i.i ], [ 210, %sw.bb96.i.i ], [ 397, %for.body16.i.i.if.then98.i.i_crit_edge ]
  %129 = ptrtoint ptr %input_ep82.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %input_ep82.i.i, align 4
  tail call void @input_event(ptr noundef %130, i32 noundef 1, i32 noundef %key.0.ph.i.i, i32 noundef 1) #11
  %conv100.i.i = trunc i32 %key.0.ph.i.i to i16
  %arrayidx102.i.i = getelementptr %struct.pcmidi_snd, ptr %3, i32 0, i32 11, i32 %bit_index.118.i.i
  %131 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv100.i.i, ptr %arrayidx102.i.i, align 2
  br label %for.inc104.i.i

for.inc104.i.i:                                   ; preds = %if.then98.i.i, %do.end67.i.i, %if.then53.i.i.for.inc104.i.i_crit_edge, %do.end.i31.i, %sw.bb25.i.i.for.inc104.i.i_crit_edge, %if.else.i28.i, %if.then23.i.i, %for.body16.i.i.for.inc104.i.i_crit_edge
  %inc105.i.i = add nuw nsw i32 %bit_index.118.i.i, 1
  %exitcond20.not.i.i = icmp eq i32 %inc105.i.i, 24
  br i1 %exitcond20.not.i.i, label %for.inc104.i.i.if.end10_crit_edge, label %for.inc104.i.i.for.body16.i.i_crit_edge

for.inc104.i.i.for.body16.i.i_crit_edge:          ; preds = %for.inc104.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.i.i

for.inc104.i.i.if.end10_crit_edge:                ; preds = %for.inc104.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %for.inc104.i.i.if.end10_crit_edge, %pcmidi_send_note.exit.i.i.if.end10_crit_edge, %if.then39.i.i, %sw.bb1.i.if.end10_crit_edge, %if.then44.i.i, %if.else.i.i.if.end10_crit_edge, %do.end28.i.i, %if.then15.i.i.if.end10_crit_edge, %if.then5.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.then5.if.end10_crit_edge ], [ 0, %if.then.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ], [ 1, %if.then44.i.i ], [ 1, %do.end28.i.i ], [ 1, %if.then15.i.i.if.end10_crit_edge ], [ 0, %if.else.i.i.if.end10_crit_edge ], [ 1, %sw.bb1.i.if.end10_crit_edge ], [ 1, %if.then39.i.i ], [ 1, %pcmidi_send_note.exit.i.i.if.end10_crit_edge ], [ 1, %for.inc104.i.i.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pk_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %1)
  %cmp = icmp eq i32 %1, 178
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %rdesc, i32 111
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp1 = icmp eq i8 %3, 6
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 112
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %rdesc, i32 113
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp11 = icmp eq i8 %7, -1
  br i1 %cmp11, label %do.end, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.84) #15
  %arrayidx13 = getelementptr i8, ptr %rdesc, i32 144
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true8.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pk_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm1 = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1, align 4
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %and = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %and)
  %cmp = icmp eq i32 %and, -16777216
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ifnum = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp2 = icmp eq i16 %7, 1
  br i1 %cmp2, label %pcmidi_setup_extra_keys.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pcmidi_setup_extra_keys.exit:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %input_ep82.i = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %input_ep82.i, align 4
  %uglygep.i = getelementptr i8, ptr %3, i32 1950
  %11 = call ptr @memset(ptr %uglygep.i, i32 0, i32 48)
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 464, ptr noundef %keybit.i) #11
  %12 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_ep82.i, align 4
  %keybit.1.i = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 430, ptr noundef %keybit.1.i) #11
  %14 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input_ep82.i, align 4
  %keybit.2.i = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 397, ptr noundef %keybit.2.i) #11
  %16 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_ep82.i, align 4
  %keybit.3.i = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 429, ptr noundef %keybit.3.i) #11
  %18 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_ep82.i, align 4
  %keybit.4.i = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 235, ptr noundef %keybit.4.i) #11
  %20 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_ep82.i, align 4
  %keybit.5.i = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 421, ptr noundef %keybit.5.i) #11
  %22 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_ep82.i, align 4
  %keybit.6.i = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 423, ptr noundef %keybit.6.i) #11
  %24 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_ep82.i, align 4
  %keybit.7.i = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 152, ptr noundef %keybit.7.i) #11
  %26 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_ep82.i, align 4
  %keybit.8.i = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 138, ptr noundef %keybit.8.i) #11
  %28 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input_ep82.i, align 4
  %keybit.9.i = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 231, ptr noundef %keybit.9.i) #11
  %30 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input_ep82.i, align 4
  %keybit.10.i = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 232, ptr noundef %keybit.10.i) #11
  %32 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_ep82.i, align 4
  %keybit.11.i = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 233, ptr noundef %keybit.11.i) #11
  %34 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_ep82.i, align 4
  %keybit.12.i = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 181, ptr noundef %keybit.12.i) #11
  %36 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_ep82.i, align 4
  %keybit.13.i = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 134, ptr noundef %keybit.13.i) #11
  %38 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input_ep82.i, align 4
  %keybit.14.i = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 206, ptr noundef %keybit.14.i) #11
  %40 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input_ep82.i, align 4
  %keybit.15.i = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 234, ptr noundef %keybit.15.i) #11
  %42 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input_ep82.i, align 4
  %keybit.16.i = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 131, ptr noundef %keybit.16.i) #11
  %44 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input_ep82.i, align 4
  %keybit.17.i = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 182, ptr noundef %keybit.17.i) #11
  %46 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input_ep82.i, align 4
  %keybit.18.i = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 432, ptr noundef %keybit.18.i) #11
  %48 = ptrtoint ptr %input_ep82.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_ep82.i, align 4
  %keybit.19.i = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 210, ptr noundef %keybit.19.i) #11
  br label %cleanup

cleanup:                                          ; preds = %pcmidi_setup_extra_keys.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcmidi_snd_free(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmidi_in_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %4 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %in_substream = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %in_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %in_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmidi_in_close(ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4) #15
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmidi_in_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %4 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef %up) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %in_triggered = getelementptr inbounds %struct.pcmidi_snd, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %in_triggered to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %up, ptr %in_triggered, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pm, align 4
  %midi_channel = getelementptr inbounds %struct.pcmidi_snd, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %midi_channel to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %midi_channel, align 2
  %conv = zext i16 %6 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %pm6 = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pm6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm6, align 4
  %midi_channel7 = getelementptr inbounds %struct.pcmidi_snd, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %midi_channel7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %midi_channel7, align 2
  %conv8 = zext i16 %10 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv8, i32 noundef 0, i32 noundef 15)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #11
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %channel, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp2 = icmp ult i32 %4, 16
  br i1 %cmp2, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %5 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.4, i32 noundef %4) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %conv = trunc i32 %7 to i16
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm, align 4
  %midi_channel = getelementptr inbounds %struct.pcmidi_snd, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %midi_channel to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %midi_channel, align 2
  %call9 = call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end8 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sustain(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pm, align 4
  %midi_sustain = getelementptr inbounds %struct.pcmidi_snd, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %midi_sustain to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %midi_sustain, align 4
  %conv = zext i16 %6 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %pm6 = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pm6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm6, align 4
  %midi_sustain7 = getelementptr inbounds %struct.pcmidi_snd, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %midi_sustain7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %midi_sustain7, align 4
  %conv8 = zext i16 %10 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %conv8, i32 noundef 0, i32 noundef 5000)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sustain(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %sustain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sustain) #11
  %2 = ptrtoint ptr %sustain to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sustain, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %sustain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %sustain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sustain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001, i32 %4)
  %cmp2 = icmp ult i32 %4, 5001
  br i1 %cmp2, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %5 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.4, i32 noundef %4) #15
  %6 = ptrtoint ptr %sustain to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %sustain, align 4
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %7 = phi i32 [ %.pr, %do.end ], [ %4, %do.body.do.end8_crit_edge ]
  %conv = trunc i32 %7 to i16
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm, align 4
  %midi_sustain = getelementptr inbounds %struct.pcmidi_snd, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %midi_sustain to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %midi_sustain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %do.end8.lor.end_crit_edge, label %lor.rhs

do.end8.lor.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm, align 4
  %midi_mode = getelementptr inbounds %struct.pcmidi_snd, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %midi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool12.not = icmp ne i16 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end8.lor.end_crit_edge
  %15 = phi i1 [ false, %do.end8.lor.end_crit_edge ], [ %tobool12.not, %lor.rhs ]
  %conv13 = zext i1 %15 to i16
  %16 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm, align 4
  %midi_sustain_mode = getelementptr inbounds %struct.pcmidi_snd, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %midi_sustain_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv13, ptr %midi_sustain_mode, align 2
  %call15 = call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %lor.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sustain) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_octave(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pm, align 4
  %midi_octave = getelementptr inbounds %struct.pcmidi_snd, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %midi_octave to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %midi_octave, align 4
  %conv = sext i16 %6 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %pm6 = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pm6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm6, align 4
  %midi_octave7 = getelementptr inbounds %struct.pcmidi_snd, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %midi_octave7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %midi_octave7, align 4
  %conv8 = sext i16 %10 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.64, i32 noundef %conv8, i32 noundef -2, i32 noundef 2)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_octave(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %octave = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %octave) #11
  %2 = ptrtoint ptr %octave to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %octave, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.65, ptr noundef nonnull %octave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %octave to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %octave, align 4
  %5 = add i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %7 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.4, i32 noundef %4) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %8 = ptrtoint ptr %octave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %octave, align 4
  %conv = trunc i32 %9 to i16
  %pm = getelementptr inbounds %struct.pk_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm, align 4
  %midi_octave = getelementptr inbounds %struct.pcmidi_snd, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %midi_octave to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %midi_octave, align 4
  %call11 = call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end10 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %octave) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmidi_sustained_note_release(ptr nocapture noundef %t) #2 align 64 {
entry:
  %buffer.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm, align 4
  %status = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  %note = getelementptr i8, ptr %t, i32 49
  %4 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %note, align 1
  %velocity = getelementptr i8, ptr %t, i32 50
  %6 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %velocity, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i) #11
  %8 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %buffer.i, i32 0, i32 2
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %3, ptr %buffer.i, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %7, ptr %9, align 1
  %rawmidi_in_lock.i = getelementptr inbounds %struct.pcmidi_snd, ptr %1, i32 0, i32 12
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rawmidi_in_lock.i) #11
  %in_substream.i = getelementptr inbounds %struct.pcmidi_snd, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %in_substream.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_substream.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.pcmidi_send_note.exit_crit_edge, label %if.end.i

entry.pcmidi_send_note.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_send_note.exit

if.end.i:                                         ; preds = %entry
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number.i, align 4
  %in_triggered.i = getelementptr inbounds %struct.pcmidi_snd, ptr %1, i32 0, i32 17
  %div3.i.i = lshr i32 %16, 5
  %arrayidx.i.i = getelementptr i32, ptr %in_triggered.i, i32 %div3.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %16, 31
  %19 = shl nuw i32 1, %and.i.i
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not.i = icmp eq i32 %20, 0
  br i1 %tobool9.not.i, label %if.end.i.pcmidi_send_note.exit_crit_edge, label %if.end11.i

if.end.i.pcmidi_send_note.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pcmidi_send_note.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %14, ptr noundef nonnull %buffer.i, i32 noundef 3) #11
  br label %pcmidi_send_note.exit

pcmidi_send_note.exit:                            ; preds = %if.end11.i, %if.end.i.pcmidi_send_note.exit_crit_edge, %entry.pcmidi_send_note.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rawmidi_in_lock.i, i32 noundef %call4.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i) #11
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !128, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !150, !151, !152, !153, !155, !157, !158, !159, !160, !162, !164, !165, !167, !168, !169, !170, !172, !174, !176, !177, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !214, !215, !216}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-prodikeys.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype234, !1, !"__UNIQUE_ID_indextype234", i1 false, i1 false}
!3 = !{ptr @__param_id, !4, !"__param_id", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-prodikeys.c", i32 91, i32 1}
!5 = !{ptr @__UNIQUE_ID_idtype235, !4, !"__UNIQUE_ID_idtype235", i1 false, i1 false}
!6 = !{ptr @__param_enable, !7, !"__param_enable", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-prodikeys.c", i32 92, i32 1}
!8 = !{ptr @__UNIQUE_ID_enabletype236, !7, !"__UNIQUE_ID_enabletype236", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_index237, !10, !"__UNIQUE_ID_index237", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-prodikeys.c", i32 93, i32 1}
!11 = !{ptr @__UNIQUE_ID_id238, !12, !"__UNIQUE_ID_id238", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-prodikeys.c", i32 94, i32 1}
!13 = !{ptr @__UNIQUE_ID_enable239, !14, !"__UNIQUE_ID_enable239", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-prodikeys.c", i32 95, i32 1}
!15 = !{ptr @__initcall__kmod_hid_prodikeys__240_898_pk_driver_init6, !16, !"__initcall__kmod_hid_prodikeys__240_898_pk_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-prodikeys.c", i32 898, i32 1}
!17 = !{ptr @__exitcall_pk_driver_exit, !16, !"__exitcall_pk_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file241, !19, !"__UNIQUE_ID_file241", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-prodikeys.c", i32 900, i32 1}
!20 = !{ptr @__UNIQUE_ID_license242, !19, !"__UNIQUE_ID_license242", i1 false, i1 false}
!21 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!22 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!23 = !{ptr @index, !24, !"index", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-prodikeys.c", i32 86, i32 12}
!25 = !{ptr @__param_str_id, !4, !"__param_str_id", i1 false, i1 false}
!26 = !{ptr @__param_arr_id, !4, !"__param_arr_id", i1 false, i1 false}
!27 = !{ptr @id, !28, !"id", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-prodikeys.c", i32 87, i32 14}
!29 = !{ptr @__param_str_enable, !7, !"__param_str_enable", i1 false, i1 false}
!30 = !{ptr @__param_arr_enable, !7, !"__param_arr_enable", i1 false, i1 false}
!31 = !{ptr @enable, !32, !"enable", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-prodikeys.c", i32 88, i32 13}
!33 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-prodikeys.c", i32 890, i32 10}
!36 = !{ptr @pk_driver, !37, !"pk_driver", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-prodikeys.c", i32 889, i32 26}
!38 = !{ptr @pk_devices, !39, !"pk_devices", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-prodikeys.c", i32 881, i32 35}
!40 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-prodikeys.c", i32 815, i32 3}
!42 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pk_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @pk_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pk_probe._entry.7, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-prodikeys.c", i32 823, i32 3}
!50 = !{ptr @pk_probe._entry_ptr.8, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-prodikeys.c", i32 836, i32 3}
!53 = !{ptr @pk_probe._entry.9, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pk_probe._entry_ptr.11, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-prodikeys.c", i32 846, i32 3}
!57 = !{ptr @pk_probe._entry.12, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pk_probe._entry_ptr.14, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @pcmidi_snd_initialise.dev, !60, !"dev", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-prodikeys.c", i32 603, i32 13}
!61 = !{ptr @pcmidi_snd_initialise.ops, !62, !"ops", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-prodikeys.c", i32 608, i32 31}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-prodikeys.c", i32 628, i32 3}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pcmidi_snd_initialise._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pcmidi_snd_initialise._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-prodikeys.c", i32 637, i32 3}
!70 = !{ptr @pcmidi_snd_initialise._entry.17, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pcmidi_snd_initialise._entry_ptr.19, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-prodikeys.c", i32 650, i32 3}
!74 = !{ptr @pcmidi_snd_initialise._entry.20, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pcmidi_snd_initialise._entry_ptr.22, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-prodikeys.c", i32 666, i32 3}
!78 = !{ptr @pcmidi_snd_initialise._entry.23, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pcmidi_snd_initialise._entry_ptr.25, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-prodikeys.c", i32 674, i32 3}
!82 = !{ptr @pcmidi_snd_initialise._entry.26, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pcmidi_snd_initialise._entry_ptr.28, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-prodikeys.c", i32 682, i32 3}
!86 = !{ptr @pcmidi_snd_initialise._entry.29, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pcmidi_snd_initialise._entry_ptr.31, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @pcmidi_snd_initialise.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-prodikeys.c", i32 687, i32 2}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-prodikeys.c", i32 692, i32 3}
!93 = !{ptr @pcmidi_snd_initialise._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pcmidi_snd_initialise._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-prodikeys.c", i32 699, i32 3}
!97 = !{ptr @pcmidi_snd_initialise._entry.36, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pcmidi_snd_initialise._entry_ptr.38, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-prodikeys.c", i32 704, i32 2}
!101 = !{ptr @pcmidi_snd_initialise._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pcmidi_snd_initialise._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"shortname", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-prodikeys.c", i32 83, i32 19}
!105 = distinct !{null, !106, !"longname", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-prodikeys.c", i32 84, i32 19}
!107 = !{ptr @pcmidi_in_ops, !108, !"pcmidi_in_ops", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-prodikeys.c", i32 595, i32 37}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-prodikeys.c", i32 575, i32 2}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pcmidi_in_open._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @pcmidi_in_open._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-prodikeys.c", i32 582, i32 2}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @pcmidi_in_close._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @pcmidi_in_close._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-prodikeys.c", i32 590, i32 2}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @pcmidi_in_trigger._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @pcmidi_in_trigger._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"sysfs_device_attr_channel", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-prodikeys.c", i32 131, i32 33}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-prodikeys.c", i32 128, i32 8}
!128 = !{ptr @dev_attr_channel, !127, !"dev_attr_channel", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-prodikeys.c", i32 105, i32 2}
!131 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @show_channel._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @show_channel._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hid/hid-prodikeys.c", i32 107, i32 22}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/hid-prodikeys.c", i32 120, i32 18}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-prodikeys.c", i32 121, i32 3}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @store_channel._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @store_channel._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"sysfs_device_attr_sustain", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-prodikeys.c", i32 170, i32 33}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-prodikeys.c", i32 167, i32 8}
!147 = !{ptr @dev_attr_sustain, !146, !"dev_attr_sustain", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hid/hid-prodikeys.c", i32 142, i32 2}
!150 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @show_sustain._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @show_sustain._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hid/hid-prodikeys.c", i32 144, i32 22}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hid/hid-prodikeys.c", i32 158, i32 3}
!157 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @store_sustain._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @store_sustain._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"sysfs_device_attr_octave", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-prodikeys.c", i32 208, i32 33}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/hid-prodikeys.c", i32 205, i32 8}
!164 = !{ptr @dev_attr_octave, !163, !"dev_attr_octave", i1 false, i1 false}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hid/hid-prodikeys.c", i32 181, i32 2}
!167 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @show_octave._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @show_octave._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-prodikeys.c", i32 183, i32 22}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hid/hid-prodikeys.c", i32 196, i32 18}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-prodikeys.c", i32 198, i32 3}
!176 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @store_octave._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @store_octave._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @init_sustain_timers.__key, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/hid/hid-prodikeys.c", i32 255, i32 3}
!181 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-prodikeys.c", i32 282, i32 4}
!184 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @pcmidi_get_output_report._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @pcmidi_get_output_report._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hid/hid-prodikeys.c", i32 286, i32 4}
!189 = !{ptr @pcmidi_get_output_report._entry.71, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @pcmidi_get_output_report._entry_ptr.73, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-prodikeys.c", i32 314, i32 2}
!193 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @pcmidi_handle_report1._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @pcmidi_handle_report1._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.77, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hid/hid-prodikeys.c", i32 322, i32 3}
!198 = !{ptr @pcmidi_handle_report1._entry.76, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @pcmidi_handle_report1._entry_ptr.78, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hid/hid-prodikeys.c", i32 415, i32 4}
!202 = !{ptr @pcmidi_handle_report4._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @pcmidi_handle_report4._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @pcmidi_handle_report4._entry.80, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-prodikeys.c", i32 418, i32 4}
!206 = !{ptr @pcmidi_handle_report4._entry_ptr.81, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @pcmidi_handle_report4._entry.82, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/hid/hid-prodikeys.c", i32 423, i32 5}
!209 = !{ptr @pcmidi_handle_report4._entry_ptr.83, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.84, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hid/hid-prodikeys.c", i32 750, i32 3}
!212 = !{ptr @.str.85, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @pk_report_fixup._entry, !211, !"_entry", i1 false, i1 false}
!215 = !{ptr @pk_report_fixup._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"keys", i1 false, i1 false}
!217 = !{!"../drivers/hid/hid-prodikeys.c", i32 519, i32 28}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{!"auto-init"}
!228 = !{i8 0, i8 2}
