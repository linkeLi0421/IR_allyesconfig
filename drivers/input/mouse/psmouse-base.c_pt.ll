; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/psmouse-base.c_pt.bc'
source_filename = "../drivers/input/mouse/psmouse-base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [48 x i8] c"psmouse.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [38 x i8] c"psmouse.description=PS/2 mouse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [41 x i8] c"psmouse.file=drivers/input/mouse/psmouse\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"psmouse.license=GPL\00", section ".modinfo", align 1
@__param_str_proto = internal constant [14 x i8] c"psmouse.proto\00", align 1
@param_ops_proto_abbrev = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @psmouse_set_maxproto, ptr @psmouse_get_maxproto, ptr null }, [16 x i8] zeroinitializer }, align 32
@psmouse_max_proto = internal global { i32, [28 x i8] } { i32 23, [28 x i8] zeroinitializer }, align 32
@__param_proto = internal constant %struct.kernel_param { ptr @__param_str_proto, ptr null, ptr @param_ops_proto_abbrev, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_max_proto } }, section "__param", align 4
@__UNIQUE_ID_prototype231 = internal constant [36 x i8] c"psmouse.parmtype=proto:proto_abbrev\00", section ".modinfo", align 1
@__UNIQUE_ID_proto232 = internal constant [105 x i8] c"psmouse.parm=proto:Highest protocol extension to probe (bare, imps, exps, any). Useful for KVM switches.\00", section ".modinfo", align 1
@__param_str_resolution = internal constant [19 x i8] c"psmouse.resolution\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@psmouse_resolution = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_resolution = internal constant %struct.kernel_param { ptr @__param_str_resolution, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_resolution } }, section "__param", align 4
@__UNIQUE_ID_resolutiontype233 = internal constant [33 x i8] c"psmouse.parmtype=resolution:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resolution234 = internal constant [44 x i8] c"psmouse.parm=resolution:Resolution, in dpi.\00", section ".modinfo", align 1
@__param_str_rate = internal constant [13 x i8] c"psmouse.rate\00", align 1
@psmouse_rate = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_rate = internal constant %struct.kernel_param { ptr @__param_str_rate, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_rate } }, section "__param", align 4
@__UNIQUE_ID_ratetype235 = internal constant [27 x i8] c"psmouse.parmtype=rate:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rate236 = internal constant [54 x i8] c"psmouse.parm=rate:Report rate, in reports per second.\00", section ".modinfo", align 1
@__param_str_smartscroll = internal constant [20 x i8] c"psmouse.smartscroll\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@psmouse_smartscroll = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_smartscroll = internal constant %struct.kernel_param { ptr @__param_str_smartscroll, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_smartscroll } }, section "__param", align 4
@__UNIQUE_ID_smartscrolltype237 = internal constant [34 x i8] c"psmouse.parmtype=smartscroll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_smartscroll238 = internal constant [95 x i8] c"psmouse.parm=smartscroll:Logitech Smartscroll autorepeat, 1 = enabled (default), 0 = disabled.\00", section ".modinfo", align 1
@__param_str_a4tech_workaround = internal constant [26 x i8] c"psmouse.a4tech_workaround\00", align 1
@psmouse_a4tech_2wheels = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_a4tech_workaround = internal constant %struct.kernel_param { ptr @__param_str_a4tech_workaround, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_a4tech_2wheels } }, section "__param", align 4
@__UNIQUE_ID_a4tech_workaroundtype239 = internal constant [40 x i8] c"psmouse.parmtype=a4tech_workaround:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_a4tech_workaround240 = internal constant [107 x i8] c"psmouse.parm=a4tech_workaround:A4Tech second scroll wheel workaround, 1 = enabled, 0 = disabled (default).\00", section ".modinfo", align 1
@__param_str_resetafter = internal constant [19 x i8] c"psmouse.resetafter\00", align 1
@psmouse_resetafter = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_resetafter = internal constant %struct.kernel_param { ptr @__param_str_resetafter, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_resetafter } }, section "__param", align 4
@__UNIQUE_ID_resetaftertype241 = internal constant [33 x i8] c"psmouse.parmtype=resetafter:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resetafter242 = internal constant [76 x i8] c"psmouse.parm=resetafter:Reset device after so many bad packets (0 = never).\00", section ".modinfo", align 1
@__param_str_resync_time = internal constant [20 x i8] c"psmouse.resync_time\00", align 1
@psmouse_resync_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_resync_time = internal constant %struct.kernel_param { ptr @__param_str_resync_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @psmouse_resync_time } }, section "__param", align 4
@__UNIQUE_ID_resync_timetype243 = internal constant [34 x i8] c"psmouse.parmtype=resync_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resync_time244 = internal constant [101 x i8] c"psmouse.parm=resync_time:How long can mouse stay idle before forcing resync (in seconds, 0 = never).\00", section ".modinfo", align 1
@kpsmoused_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@psmouse_set_resolution.params = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\02\03", [27 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PNP: \00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@psmouse_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable mouse on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psmouse_activate\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/mouse/psmouse-base.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@psmouse_activate._entry_ptr = internal global ptr @psmouse_activate._entry, section ".printk_index", align 4
@psmouse_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to deactivate mouse on %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psmouse_deactivate\00", [45 x i8] zeroinitializer }, align 32
@psmouse_deactivate._entry_ptr = internal global ptr @psmouse_deactivate._entry, section ".printk_index", align 4
@psmouse_attr_protocol = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @psmouse_attr_show_protocol, ptr @psmouse_attr_set_protocol, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psmouse_mutex, i64 52), ptr getelementptr (i8, ptr @psmouse_mutex, i64 52) }, ptr @psmouse_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@psmouse_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.65, ptr @psmouse_serio_ids, i8 0, ptr null, ptr @psmouse_interrupt, ptr @psmouse_connect, ptr @psmouse_reconnect, ptr @psmouse_fast_reconnect, ptr @psmouse_disconnect, ptr @psmouse_cleanup, %struct.device_driver { ptr @.str.66, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_psmouse__245_2087_psmouse_init6 = internal global ptr @psmouse_init, section ".initcall6.init", align 4
@__exitcall_psmouse_exit = internal global ptr @psmouse_exit, section ".exitcall.exit", align 4
@psmouse_protocols = internal constant { [20 x %struct.psmouse_protocol], [96 x i8] } { [20 x %struct.psmouse_protocol] [%struct.psmouse_protocol { i32 1, i8 1, i8 1, i8 1, i8 0, ptr @.str.9, ptr @.str.10, ptr @ps2bare_detect, ptr null }, %struct.psmouse_protocol { i32 2, i8 0, i8 0, i8 0, i8 0, ptr @.str.11, ptr @.str.12, ptr @ps2pp_detect, ptr null }, %struct.psmouse_protocol { i32 3, i8 0, i8 0, i8 0, i8 0, ptr @.str.13, ptr @.str.14, ptr @thinking_detect, ptr null }, %struct.psmouse_protocol { i32 17, i8 0, i8 0, i8 0, i8 0, ptr @.str.15, ptr @.str.16, ptr @cypress_detect, ptr @cypress_init }, %struct.psmouse_protocol { i32 4, i8 0, i8 0, i8 0, i8 0, ptr @.str.17, ptr @.str.18, ptr @genius_detect, ptr null }, %struct.psmouse_protocol { i32 5, i8 1, i8 1, i8 1, i8 0, ptr @.str.19, ptr @.str.20, ptr @intellimouse_detect, ptr null }, %struct.psmouse_protocol { i32 6, i8 1, i8 1, i8 1, i8 0, ptr @.str.21, ptr @.str.22, ptr @im_explorer_detect, ptr null }, %struct.psmouse_protocol { i32 7, i8 0, i8 0, i8 0, i8 0, ptr @.str.23, ptr @.str.24, ptr @synaptics_detect, ptr @synaptics_init_absolute }, %struct.psmouse_protocol { i32 16, i8 0, i8 0, i8 0, i8 0, ptr @.str.25, ptr @.str.26, ptr @synaptics_detect, ptr @synaptics_init_relative }, %struct.psmouse_protocol { i32 21, i8 0, i8 0, i8 0, i8 1, ptr @.str.27, ptr @.str.28, ptr @synaptics_detect, ptr @synaptics_init_smbus }, %struct.psmouse_protocol { i32 8, i8 0, i8 0, i8 0, i8 0, ptr @.str.29, ptr @.str.30, ptr @alps_detect, ptr @alps_init }, %struct.psmouse_protocol { i32 10, i8 0, i8 0, i8 1, i8 0, ptr @.str.31, ptr @.str.32, ptr @trackpoint_detect, ptr null }, %struct.psmouse_protocol { i32 11, i8 0, i8 0, i8 0, i8 0, ptr @.str.33, ptr @.str.34, ptr @touchkit_ps2_detect, ptr null }, %struct.psmouse_protocol { i32 14, i8 0, i8 0, i8 0, i8 0, ptr @.str.35, ptr @.str.36, ptr @elantech_detect, ptr @elantech_init_ps2 }, %struct.psmouse_protocol { i32 22, i8 0, i8 0, i8 0, i8 1, ptr @.str.37, ptr @.str.38, ptr @elantech_detect, ptr @elantech_init_smbus }, %struct.psmouse_protocol { i32 15, i8 0, i8 0, i8 0, i8 0, ptr @.str.39, ptr @.str.40, ptr @fsp_detect, ptr @fsp_init }, %struct.psmouse_protocol { i32 12, i8 0, i8 0, i8 0, i8 0, ptr @.str.41, ptr @.str.42, ptr @cortron_detect, ptr null }, %struct.psmouse_protocol { i32 18, i8 0, i8 0, i8 0, i8 0, ptr @.str.43, ptr @.str.44, ptr @focaltech_detect, ptr @focaltech_init }, %struct.psmouse_protocol { i32 20, i8 0, i8 0, i8 0, i8 0, ptr @.str.45, ptr @.str.46, ptr @byd_detect, ptr @byd_init }, %struct.psmouse_protocol { i32 23, i8 1, i8 0, i8 0, i8 0, ptr @.str.47, ptr @.str.48, ptr null, ptr null }], [96 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PS/2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bare\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PS2++\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"logitech\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ThinkPS/2\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"thinkps\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CyPS/2\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cypress\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GenPS/2\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"genius\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ImPS/2\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imps\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ImExPS/2\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exps\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SynPS/2\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"synaptics\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SynRelPS/2\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"synaptics-relative\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SynSMBus\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"synaptics-smbus\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AlpsPS/2\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alps\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TPPS/2\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trackpoint\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"touchkitPS/2\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"touchkit\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ETPS/2\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"elantech\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ETSMBus\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"elantech-smbus\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FSPPS/2\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsp\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CortronPS/2\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cortps\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FocalTechPS/2\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"focaltech\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BYDPS/2\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"byd\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Generic\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mouse\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Kensington\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ThinkingMouse\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Genius\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Wheel Mouse\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Explorer Mouse\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Cortron\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PS/2 Trackball\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@psmouse_attr_set_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 1921, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"failed to destroy children ports, protocol change aborted.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"psmouse_attr_set_protocol\00", [38 x i8] zeroinitializer }, align 32
@psmouse_attr_set_protocol._entry_ptr = internal global ptr @psmouse_attr_set_protocol._entry, section ".printk_index", align 4
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@psmouse_set_rate.rates = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\C8dP<(\14\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"psmouse_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psmouse_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PS/2 mouse driver\00", [46 x i8] zeroinitializer }, align 32
@psmouse_serio_ids = internal global { [3 x %struct.serio_device_id], [20 x i8] } { [3 x %struct.serio_device_id] [%struct.serio_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 5, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@psmouse_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad data from KBC -%s%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psmouse_interrupt\00", [46 x i8] zeroinitializer }, align 32
@psmouse_interrupt._entry_ptr = internal global ptr @psmouse_interrupt._entry, section ".printk_index", align 4
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" timeout\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" bad parity\00", [20 x i8] zeroinitializer }, align 32
@psmouse_interrupt._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.4, i32 380, ptr @.str.74, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s at %s lost synchronization, throwing %d bytes away.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@psmouse_interrupt._entry_ptr.75 = internal global ptr @psmouse_interrupt._entry.72, section ".printk_index", align 4
@psmouse_handle_oob_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unknown OOB_DATA type: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"psmouse_handle_oob_data\00", [40 x i8] zeroinitializer }, align 32
@psmouse_handle_oob_data._entry_ptr = internal global ptr @psmouse_handle_oob_data._entry, section ".printk_index", align 4
@psmouse_handle_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s at %s lost sync at byte %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"psmouse_handle_byte\00", [44 x i8] zeroinitializer }, align 32
@psmouse_handle_byte._entry_ptr = internal global ptr @psmouse_handle_byte._entry, section ".printk_index", align 4
@psmouse_handle_byte._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 286, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"issuing reconnect request\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@psmouse_handle_byte._entry_ptr.83 = internal global ptr @psmouse_handle_byte._entry.80, section ".printk_index", align 4
@psmouse_handle_byte._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.79, ptr @.str.4, i32 300, ptr @.str.82, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s at %s - driver resynced.\0A\00", [35 x i8] zeroinitializer }, align 32
@psmouse_handle_byte._entry_ptr.86 = internal global ptr @psmouse_handle_byte._entry.84, section ".printk_index", align 4
@psmouse_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&psmouse->resync_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@psmouse_connect.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&psmouse->resync_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@psmouse_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @psmouse_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@psmouse_resync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 1410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to re-enable mouse on %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psmouse_resync\00", [17 x i8] zeroinitializer }, align 32
@psmouse_resync._entry_ptr = internal global ptr @psmouse_resync._entry, section ".printk_index", align 4
@psmouse_resync._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.4, i32 1417, ptr @.str.74, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"resync failed, issuing reconnect request\0A\00", [54 x i8] zeroinitializer }, align 32
@psmouse_resync._entry_ptr.95 = internal global ptr @psmouse_resync._entry.93, section ".printk_index", align 4
@psmouse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 1277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to reset mouse on %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psmouse_probe\00", [18 x i8] zeroinitializer }, align 32
@psmouse_probe._entry_ptr = internal global ptr @psmouse_probe._entry, section ".printk_index", align 4
@psmouse_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @psmouse_attr_protocol, ptr @psmouse_attr_rate, ptr @psmouse_attr_resolution, ptr @psmouse_attr_resetafter, ptr @psmouse_attr_resync_time, ptr null], [40 x i8] zeroinitializer }, align 32
@psmouse_attr_rate = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 416 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_attr_set_rate, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_resolution = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 420 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_attr_set_resolution, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_resetafter = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 424 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@psmouse_attr_resync_time = internal global { %struct.psmouse_attribute, [52 x i8] } { %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 428 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_set_int_attr, i8 1 }, [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resolution\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resetafter\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resync_time\00", [20 x i8] zeroinitializer }, align 32
@psmouse_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.4, i32 1450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to disable mouse on %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"psmouse_cleanup\00", [16 x i8] zeroinitializer }, align 32
@psmouse_cleanup._entry_ptr = internal global ptr @psmouse_cleanup._entry, section ".printk_index", align 4
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kpsmoused\00", [22 x i8] zeroinitializer }, align 32
@psmouse_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.4, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013psmouse: failed to create kpsmoused workqueue\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"psmouse_init\00", [19 x i8] zeroinitializer }, align 32
@psmouse_init._entry_ptr = internal global ptr @psmouse_init._entry, section ".printk_index", align 4
@switch.table.psmouse_get_maxproto = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 1), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 2), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 4), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 5), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 6), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 7), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 10), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 11), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 12), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 16), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 13), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 15), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 8), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 3), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 17), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 18), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 9), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 14), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 19)], [36 x i8] zeroinitializer }, align 32
@switch.table.psmouse_switch_protocol = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 1), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 2), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 4), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 5), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 6), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 7), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 10), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 11), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 12), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 16), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 13), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 15), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 8), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 3), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 17), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 18), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 9), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 14), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 19)], [36 x i8] zeroinitializer }, align 32
@switch.table.psmouse_try_protocol = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 1), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 2), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 4), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 5), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 6), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 7), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 10), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 11), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 12), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 16), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 13), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 15), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 8), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 3), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 17), ptr @psmouse_protocols, ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 18), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 9), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 14), ptr getelementptr inbounds ([20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 19)], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 12]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 255]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 255]
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"param_ops_proto_abbrev\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 49, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"psmouse_max_proto\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 46, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"psmouse_resolution\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 57, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"psmouse_rate\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 61, i32 21 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"psmouse_smartscroll\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 65, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"psmouse_a4tech_2wheels\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 69, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"psmouse_resetafter\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 73, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"psmouse_resync_time\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 77, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"kpsmoused_wq\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 119, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 455, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 521, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 531, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1303, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1322, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"psmouse_attr_protocol\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"psmouse_mutex\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"psmouse_drv\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1792, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"psmouse_protocols\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 725, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 728, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 729, i32 13 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 738, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 739, i32 13 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 745, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 746, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 752, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 753, i32 13 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 760, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 761, i32 13 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 766, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 767, i32 13 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 775, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 776, i32 13 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 785, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 786, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 792, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 793, i32 13 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 801, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 802, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 811, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 812, i32 13 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 829, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 830, i32 13 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 838, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 839, i32 13 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 854, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 855, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 863, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 864, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 873, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 874, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 881, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 882, i32 13 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 888, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 889, i32 13 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 906, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 907, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 914, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 915, i32 13 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 694, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 696, i32 20 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 680, i32 21 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 681, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 566, i32 21 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 600, i32 20 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 646, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 715, i32 21 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 716, i32 19 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2045, i32 25 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 81, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1920, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1565, i32 55 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 471, i32 18 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 117, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1796, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant [18 x i8] c"psmouse_serio_ids\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1774, i32 31 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1794, i32 11 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 351, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 379, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 326, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 279, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 285, i32 5 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 298, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1605, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1607, i32 49 }
@___asan_gen_.447 = private unnamed_addr constant [24 x i8] c"psmouse_attribute_group\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 106, i32 37 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1409, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1416, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1276, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [19 x i8] c"psmouse_attributes\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 97, i32 26 }
@___asan_gen_.477 = private unnamed_addr constant [18 x i8] c"psmouse_attr_rate\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [24 x i8] c"psmouse_attr_resolution\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [24 x i8] c"psmouse_attr_resetafter\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [25 x i8] c"psmouse_attr_resync_time\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 84, i32 1 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1875, i32 22 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 87, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 90, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 93, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 1449, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2060, i32 17 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.523 = private constant [38 x i8] c"../drivers/input/mouse/psmouse-base.c\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 2062, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant [34 x i8] c"switch.table.psmouse_get_maxproto\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [37 x i8] c"switch.table.psmouse_switch_protocol\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [34 x i8] c"switch.table.psmouse_try_protocol\00", align 1
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_a4tech_workaround240, ptr @__UNIQUE_ID_a4tech_workaroundtype239, ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_proto232, ptr @__UNIQUE_ID_prototype231, ptr @__UNIQUE_ID_rate236, ptr @__UNIQUE_ID_ratetype235, ptr @__UNIQUE_ID_resetafter242, ptr @__UNIQUE_ID_resetaftertype241, ptr @__UNIQUE_ID_resolution234, ptr @__UNIQUE_ID_resolutiontype233, ptr @__UNIQUE_ID_resync_time244, ptr @__UNIQUE_ID_resync_timetype243, ptr @__UNIQUE_ID_smartscroll238, ptr @__UNIQUE_ID_smartscrolltype237, ptr @__exitcall_psmouse_exit, ptr @__initcall__kmod_psmouse__245_2087_psmouse_init6, ptr @__param_a4tech_workaround, ptr @__param_proto, ptr @__param_rate, ptr @__param_resetafter, ptr @__param_resolution, ptr @__param_resync_time, ptr @__param_smartscroll, ptr @psmouse_activate._entry, ptr @psmouse_activate._entry_ptr, ptr @psmouse_attr_set_protocol._entry, ptr @psmouse_attr_set_protocol._entry_ptr, ptr @psmouse_cleanup._entry, ptr @psmouse_cleanup._entry_ptr, ptr @psmouse_deactivate._entry, ptr @psmouse_deactivate._entry_ptr, ptr @psmouse_exit, ptr @psmouse_handle_byte._entry, ptr @psmouse_handle_byte._entry.80, ptr @psmouse_handle_byte._entry.84, ptr @psmouse_handle_byte._entry_ptr, ptr @psmouse_handle_byte._entry_ptr.83, ptr @psmouse_handle_byte._entry_ptr.86, ptr @psmouse_handle_oob_data._entry, ptr @psmouse_handle_oob_data._entry_ptr, ptr @psmouse_init._entry, ptr @psmouse_init._entry_ptr, ptr @psmouse_interrupt._entry, ptr @psmouse_interrupt._entry.72, ptr @psmouse_interrupt._entry_ptr, ptr @psmouse_interrupt._entry_ptr.75, ptr @psmouse_probe._entry, ptr @psmouse_probe._entry_ptr, ptr @psmouse_resync._entry, ptr @psmouse_resync._entry.93, ptr @psmouse_resync._entry_ptr, ptr @psmouse_resync._entry_ptr.95, ptr @param_ops_proto_abbrev, ptr @psmouse_max_proto, ptr @psmouse_resolution, ptr @psmouse_rate, ptr @psmouse_smartscroll, ptr @psmouse_a4tech_2wheels, ptr @psmouse_resetafter, ptr @psmouse_resync_time, ptr @kpsmoused_wq, ptr @psmouse_set_resolution.params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @psmouse_attr_protocol, ptr @psmouse_mutex, ptr @psmouse_drv, ptr @psmouse_protocols, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @psmouse_set_rate.rates, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @psmouse_serio_ids, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.85, ptr @psmouse_connect.__key, ptr @.str.87, ptr @psmouse_connect.__key.88, ptr @.str.89, ptr @.str.90, ptr @psmouse_attribute_group, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @psmouse_attributes, ptr @psmouse_attr_rate, ptr @psmouse_attr_resolution, ptr @psmouse_attr_resetafter, ptr @psmouse_attr_resync_time, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @switch.table.psmouse_get_maxproto, ptr @switch.table.psmouse_switch_protocol, ptr @switch.table.psmouse_try_protocol], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_proto_abbrev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_max_proto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_resolution to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_smartscroll to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_a4tech_2wheels to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_resetafter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_resync_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpsmoused_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_set_resolution.params to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_protocol to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_protocols to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_set_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_set_rate.rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_serio_ids to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_interrupt._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_handle_oob_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_handle_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_handle_byte._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_handle_byte._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_connect.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_resync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_resync._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_rate to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_resolution to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_resetafter to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_attr_resync_time to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psmouse_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psmouse_get_maxproto to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psmouse_switch_protocol to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psmouse_try_protocol to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_buttons(ptr noundef %dev, i8 noundef zeroext %buttons) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %buttons to i32
  %and = and i32 %conv, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 272, i32 noundef %and) #12
  %and2 = lshr i32 %conv, 2
  %and2.lobit = and i32 %and2, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 274, i32 noundef %and2.lobit) #12
  %and4 = lshr i32 %conv, 1
  %and4.lobit = and i32 %and4, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 273, i32 noundef %and4.lobit) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_motion(ptr noundef %dev, ptr nocapture noundef readonly %packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %packet, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 4
  %and = and i32 %shl, 256
  %sub = sub nsw i32 %conv, %and
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %arrayidx5 = getelementptr i8, ptr %packet, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %cond.end.cond.end17_crit_edge, label %cond.true8

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.true8:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = zext i8 %5 to i32
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet, align 1
  %conv12 = zext i8 %7 to i32
  %shl13 = shl nuw nsw i32 %conv12, 3
  %and14 = and i32 %shl13, 256
  %sub15.neg = sub nsw i32 %and14, %conv6
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true8, %cond.end.cond.end17_crit_edge
  %cond18.neg = phi i32 [ %sub15.neg, %cond.true8 ], [ 0, %cond.end.cond.end17_crit_edge ]
  tail call void @input_event(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef %cond) #12
  tail call void @input_event(ptr noundef %dev, i32 noundef 2, i32 noundef 1, i32 noundef %cond18.neg) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_packet(ptr noundef %dev, ptr nocapture noundef readonly %packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %packet, align 1
  %conv.i = zext i8 %1 to i32
  %and.i = and i32 %conv.i, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 272, i32 noundef %and.i) #12
  %and2.i = lshr i32 %conv.i, 2
  %and2.lobit.i = and i32 %and2.i, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 274, i32 noundef %and2.lobit.i) #12
  %and4.i = lshr i32 %conv.i, 1
  %and4.lobit.i = and i32 %and4.i, 1
  tail call void @input_event(ptr noundef %dev, i32 noundef 1, i32 noundef 273, i32 noundef %and4.lobit.i) #12
  %arrayidx.i = getelementptr i8, ptr %packet, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i3 = zext i8 %3 to i32
  %4 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet, align 1
  %conv4.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 4
  %and.i4 = and i32 %shl.i, 256
  %sub.i = sub nsw i32 %conv.i3, %and.i4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ 0, %entry.cond.end.i_crit_edge ]
  %arrayidx5.i = getelementptr i8, ptr %packet, i32 2
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i, label %cond.end.i.psmouse_report_standard_motion.exit_crit_edge, label %cond.true8.i

cond.end.i.psmouse_report_standard_motion.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_report_standard_motion.exit

cond.true8.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %packet, align 1
  %conv12.i = zext i8 %9 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 3
  %and14.i = and i32 %shl13.i, 256
  %sub15.neg.i = sub nsw i32 %and14.i, %conv6.i
  br label %psmouse_report_standard_motion.exit

psmouse_report_standard_motion.exit:              ; preds = %cond.true8.i, %cond.end.i.psmouse_report_standard_motion.exit_crit_edge
  %cond18.neg.i = phi i32 [ %sub15.neg.i, %cond.true8.i ], [ 0, %cond.end.i.psmouse_report_standard_motion.exit_crit_edge ]
  tail call void @input_event(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef %cond.i) #12
  tail call void @input_event(ptr noundef %dev, i32 noundef 2, i32 noundef 1, i32 noundef %cond18.neg.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_process_byte(ptr nocapture noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %packet2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %4 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp = icmp ult i8 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %protocol, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.sw.epilog65_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb6
    i32 4, label %sw.bb37
    i32 3, label %sw.bb47
    i32 12, label %sw.bb57
  ]

if.end.sw.epilog65_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog65

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %12 to i32
  %sub = sub nsw i32 0, %conv5
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %sub) #12
  br label %sw.epilog65

sw.bb6:                                           ; preds = %if.end
  %arrayidx7 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %15 = lshr i32 %conv8, 6
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %15, label %sw.bb6.unreachabledefault [
    i32 2, label %sw.bb9
    i32 1, label %sw.bb13
    i32 0, label %sw.bb6.sw.bb18_crit_edge
    i32 3, label %sw.bb6.sw.bb18_crit_edge133
  ]

sw.bb6.sw.bb18_crit_edge133:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

sw.bb6.sw.bb18_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl i32 %conv8, 26
  %shr.i = ashr exact i32 %shl.i, 26
  %sub12 = sub nsw i32 0, %shr.i
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %sub12) #12
  br label %sw.epilog65

sw.bb13:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i113 = shl i32 %conv8, 26
  %shr.i114 = ashr exact i32 %shl.i113, 26
  %sub17 = sub nsw i32 0, %shr.i114
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 6, i32 noundef %sub17) #12
  br label %sw.epilog65

sw.bb18:                                          ; preds = %sw.bb6.sw.bb18_crit_edge, %sw.bb6.sw.bb18_crit_edge133
  %shl.i115 = shl i32 %conv8, 28
  %shr.i116 = ashr exact i32 %shl.i115, 28
  %17 = load i8, ptr @psmouse_a4tech_2wheels, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp ne i8 %17, 0
  %18 = tail call i32 @llvm.abs.i32(i32 %shr.i116, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp26 = icmp ugt i32 %18, 1
  %or.cond = select i1 %tobool.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  %div.lhs.trunc = trunc i32 %shr.i116 to i8
  %div127 = sdiv i8 %div.lhs.trunc, 2
  %div.sext = sext i8 %div127 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 6, i32 noundef %div.sext) #12
  br label %if.end30

if.else:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  %sub29 = sub nsw i32 0, %shr.i116
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %sub29) #12
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7, align 1
  %21 = lshr i8 %20, 4
  %.lobit131 = and i8 %21, 1
  %22 = zext i8 %.lobit131 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %22) #12
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7, align 1
  %25 = lshr i8 %24, 5
  %.lobit132 = and i8 %25, 1
  %26 = zext i8 %.lobit132 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %26) #12
  br label %sw.epilog65

sw.bb6.unreachabledefault:                        ; preds = %sw.bb6
  unreachable

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx38 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %28 to i32
  %sub40 = sub nsw i32 0, %conv39
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %sub40) #12
  %29 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %packet2, align 1
  %31 = lshr i8 %30, 6
  %.lobit129 = and i8 %31, 1
  %32 = zext i8 %.lobit129 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %32) #12
  %33 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %packet2, align 1
  %.lobit130 = lshr i8 %34, 7
  %35 = zext i8 %.lobit130 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %35) #12
  br label %sw.epilog65

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %packet2, align 1
  %38 = lshr i8 %37, 3
  %.lobit128 = and i8 %38, 1
  %39 = zext i8 %.lobit128 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %39) #12
  %40 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %packet2, align 1
  %42 = shl i8 %41, 1
  %43 = and i8 %42, -128
  %arrayidx54 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx54, align 1
  %or112 = or i8 %43, %45
  store i8 %or112, ptr %arrayidx54, align 1
  br label %sw.epilog65

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %packet2, align 1
  %48 = lshr i8 %47, 3
  %.lobit = and i8 %48, 1
  %49 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %49) #12
  %50 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %packet2, align 1
  %52 = or i8 %51, 8
  store i8 %52, ptr %packet2, align 1
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.bb57, %sw.bb47, %sw.bb37, %if.end30, %sw.bb13, %sw.bb9, %sw.bb, %if.end.sw.epilog65_crit_edge
  %extra_buttons = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 12
  %53 = ptrtoint ptr %extra_buttons to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %extra_buttons, align 4
  %55 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %packet2, align 1
  %or69111 = or i8 %56, %54
  store i8 %or69111, ptr %packet2, align 1
  tail call void @psmouse_report_standard_packet(ptr noundef %1, ptr noundef %packet2)
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.epilog65 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_queue_work(ptr nocapture readnone %psmouse, ptr noundef %work, i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kpsmoused_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %delay) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_set_state(ptr nocapture noundef %psmouse, i32 noundef %new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %state.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_state, ptr %state.i, align 4
  %out_of_sync_cnt.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %3 = ptrtoint ptr %out_of_sync_cnt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out_of_sync_cnt.i, align 4
  %pktcnt.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %4 = ptrtoint ptr %pktcnt.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pktcnt.i, align 1
  %flags.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 15
  %7 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last.i, align 4
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %lock.i5 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_reset(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #12
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %param, align 1, !annotation !311
  %1 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !311
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 767) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %4)
  %cmp.not = icmp eq i8 %4, -86
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4.not = icmp eq i8 %6, 0
  br i1 %cmp4.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psmouse_set_resolution(ptr noundef %psmouse, i32 noundef %resolution) #0 align 64 {
entry:
  %p = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p) #12
  %0 = add i32 %resolution, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -200, i32 %0)
  %1 = icmp ult i32 %0, -200
  %2 = trunc i32 %resolution to i8
  %.op = udiv i8 %2, 50
  %3 = zext i8 %.op to i32
  %div.zext = select i1 %1, i32 4, i32 %3
  %arrayidx = getelementptr [5 x i8], ptr @psmouse_set_resolution.params, i32 0, i32 %div.zext
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %p, align 1
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %p, i32 noundef 4328) #12
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 25, %conv
  %resolution2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 22
  %9 = ptrtoint ptr %resolution2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %resolution2, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @psmouse_matches_pnp_id(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readonly %ids) local_unnamed_addr #0 align 64 {
entry:
  %fw_id_copy = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_id_copy) #12
  %firmware_id = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 3
  %call = tail call i32 @strncmp(ptr noundef %firmware_id, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.serio, ptr %1, i32 0, i32 3, i32 5
  %call3 = tail call ptr @kstrndup(ptr noundef %arrayidx, i32 noundef 123, i32 noundef 3264) #12
  %2 = ptrtoint ptr %fw_id_copy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %fw_id_copy, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call721 = call ptr @strsep(ptr noundef nonnull %fw_id_copy, ptr noundef nonnull @.str.1) #12
  %cmp.not22 = icmp eq ptr %call721, null
  br i1 %cmp.not22, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %psmouse_check_pnp_id.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call723 = phi ptr [ %call7, %psmouse_check_pnp_id.exit.while.body_crit_edge ], [ %call721, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ids, align 4
  %tobool.not6.i = icmp eq ptr %4, null
  br i1 %tobool.not6.i, label %while.body.psmouse_check_pnp_id.exit_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.psmouse_check_pnp_id.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_check_pnp_id.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %i.07.i, 1
  %arrayidx.i = getelementptr ptr, ptr %ids, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.cond.i.psmouse_check_pnp_id.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.psmouse_check_pnp_id.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_check_pnp_id.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %7 = phi ptr [ %6, %for.cond.i.for.body.i_crit_edge ], [ %4, %while.body.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %call.i = call i32 @strcasecmp(ptr noundef nonnull %call723, ptr noundef nonnull %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %for.body.i.while.end_crit_edge, label %for.cond.i

for.body.i.while.end_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

psmouse_check_pnp_id.exit:                        ; preds = %for.cond.i.psmouse_check_pnp_id.exit_crit_edge, %while.body.psmouse_check_pnp_id.exit_crit_edge
  %call7 = call ptr @strsep(ptr noundef nonnull %fw_id_copy, ptr noundef nonnull @.str.1) #12
  %cmp.not = icmp eq ptr %call7, null
  br i1 %cmp.not, label %psmouse_check_pnp_id.exit.while.end_crit_edge, label %psmouse_check_pnp_id.exit.while.body_crit_edge

psmouse_check_pnp_id.exit.while.body_crit_edge:   ; preds = %psmouse_check_pnp_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

psmouse_check_pnp_id.exit.while.end_crit_edge:    ; preds = %psmouse_check_pnp_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %psmouse_check_pnp_id.exit.while.end_crit_edge, %for.body.i.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cmp.not20 = phi i1 [ false, %while.cond.preheader.while.end_crit_edge ], [ true, %for.body.i.while.end_crit_edge ], [ false, %psmouse_check_pnp_id.exit.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.not20, %while.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_id_copy) #12
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_activate(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %phys = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %phys) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %3 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %4 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 15
  %7 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last.i.i, align 4
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_deactivate(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  %phys = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %phys, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %3 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %4 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 15
  %7 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last.i.i, align 4
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_attr_show_helper(ptr nocapture noundef readonly %dev, ptr noundef readonly %devattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %protocol = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol, align 4
  %smbus_companion = getelementptr inbounds %struct.psmouse_protocol, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %smbus_companion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smbus_companion, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cmp.not = icmp eq ptr %devattr, @psmouse_attr_protocol
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %show = getelementptr inbounds %struct.psmouse_attribute, ptr %devattr, i32 0, i32 2
  %6 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %show, align 4
  %data = getelementptr inbounds %struct.psmouse_attribute, ptr %devattr, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call4 = tail call i32 %7(ptr noundef %1, ptr noundef %9, ptr noundef %buf) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psmouse_attr_set_helper(ptr nocapture noundef readonly %dev, ptr noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %protocol = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol, align 4
  %smbus_companion = getelementptr inbounds %struct.psmouse_protocol, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %smbus_companion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smbus_companion, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  %cmp.not = icmp eq ptr %devattr, @psmouse_attr_protocol
  %or.cond = or i1 %cmp.not, %tobool6.not
  br i1 %or.cond, label %if.end8, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8:                                          ; preds = %if.end
  %protect = getelementptr inbounds %struct.psmouse_attribute, ptr %devattr, i32 0, i32 4
  %6 = ptrtoint ptr %protect to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protect, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end30_crit_edge, label %if.then10

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then10:                                        ; preds = %if.end8
  %state = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %if.then10.out_unlock_crit_edge, label %if.end13

if.then10.out_unlock_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end13:                                         ; preds = %if.then10
  %parent14 = getelementptr i8, ptr %dev, i32 -124
  %10 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent14, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %land.lhs.true16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.end13
  %id = getelementptr i8, ptr %dev, i32 -195
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp17 = icmp eq i8 %13, 5
  br i1 %cmp17, label %if.then19, label %land.lhs.true16.if.end23_crit_edge

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true16
  %driver_data.i.i66 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18, i32 8
  %14 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i66, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %16 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps2dev.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end23

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 16
  %19 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 9
  %20 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %15, i32 0, i32 15
  %23 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last.i.i.i, align 4
  %24 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %do.end.i, %land.lhs.true16.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true16.if.end23_crit_edge ], [ null, %if.end13.if.end23_crit_edge ], [ %15, %do.end.i ], [ %15, %if.end.i ]
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %protocol, align 4
  %smbus_companion25 = getelementptr inbounds %struct.psmouse_protocol, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %smbus_companion25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %smbus_companion25, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not = icmp eq i8 %29, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  %ps2dev.i67 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %call.i68 = tail call i32 @ps2_command(ptr noundef %ps2dev.i67, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  %30 = ptrtoint ptr %ps2dev.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps2dev.i67, align 4
  br i1 %tobool.not.i69, label %if.end.i80, label %do.end.i72

do.end.i72:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i70 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  %phys.i71 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i70, ptr noundef nonnull @.str.7, ptr noundef %phys.i71, i32 noundef %call.i68) #15
  br label %if.end30

if.end.i80:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i73 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i73) #12
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %state, align 4
  %out_of_sync_cnt.i.i.i75 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %out_of_sync_cnt.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %out_of_sync_cnt.i.i.i75, align 4
  %pktcnt.i.i.i76 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %pktcnt.i.i.i76 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %pktcnt.i.i.i76, align 1
  %flags.i.i.i77 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %flags.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags.i.i.i77, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i78 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %last.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last.i.i.i78, align 4
  %38 = ptrtoint ptr %ps2dev.i67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ps2dev.i67, align 4
  %lock.i5.i.i79 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i79) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end.i80, %do.end.i72, %if.end23.if.end30_crit_edge, %if.end8.if.end30_crit_edge
  %parent.1 = phi ptr [ %parent.0, %if.end23.if.end30_crit_edge ], [ null, %if.end8.if.end30_crit_edge ], [ %parent.0, %do.end.i72 ], [ %parent.0, %if.end.i80 ]
  %set = getelementptr inbounds %struct.psmouse_attribute, ptr %devattr, i32 0, i32 3
  %40 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set, align 4
  %data = getelementptr inbounds %struct.psmouse_attribute, ptr %devattr, i32 0, i32 1
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %call31 = tail call i32 %41(ptr noundef %1, ptr noundef %43, ptr noundef %buf, i32 noundef %count) #12
  %44 = ptrtoint ptr %protect to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %protect, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool33.not = icmp eq i8 %45, 0
  br i1 %tobool33.not, label %if.end30.out_unlock_crit_edge, label %if.then34

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call31)
  %cmp35.not = icmp eq i32 %call31, -19
  br i1 %cmp35.not, label %if.then34.if.end43_crit_edge, label %land.lhs.true37

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true37:                                  ; preds = %if.then34
  %46 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %protocol, align 4
  %smbus_companion39 = getelementptr inbounds %struct.psmouse_protocol, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %smbus_companion39 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %smbus_companion39, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool40.not = icmp eq i8 %49, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true37.if.end43_crit_edge

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call i32 @psmouse_activate(ptr noundef %1)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true37.if.end43_crit_edge, %if.then34.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %parent.1, null
  br i1 %tobool44.not, label %if.end43.out_unlock_crit_edge, label %if.then45

if.end43.out_unlock_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then45:                                        ; preds = %if.end43
  %ps2dev.i82 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 2
  %call.i83 = tail call i32 @ps2_command(ptr noundef %ps2dev.i82, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  %50 = ptrtoint ptr %ps2dev.i82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ps2dev.i82, align 4
  br i1 %tobool.not.i84, label %if.end.i95, label %do.end.i87

do.end.i87:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i85 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 18
  %phys.i86 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i85, ptr noundef nonnull @.str.2, ptr noundef %phys.i86) #15
  br label %out_unlock

if.end.i95:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i88 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i88) #12
  %state.i.i.i89 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 18
  %52 = ptrtoint ptr %state.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %state.i.i.i89, align 4
  %out_of_sync_cnt.i.i.i90 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 16
  %53 = ptrtoint ptr %out_of_sync_cnt.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %out_of_sync_cnt.i.i.i90, align 4
  %pktcnt.i.i.i91 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 9
  %54 = ptrtoint ptr %pktcnt.i.i.i91 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %pktcnt.i.i.i91, align 1
  %flags.i.i.i92 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %flags.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %flags.i.i.i92, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i93 = getelementptr inbounds %struct.psmouse, ptr %parent.1, i32 0, i32 15
  %57 = ptrtoint ptr %last.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %last.i.i.i93, align 4
  %58 = ptrtoint ptr %ps2dev.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ps2dev.i82, align 4
  %lock.i5.i.i94 = getelementptr inbounds %struct.serio, ptr %59, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i94) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i95, %do.end.i87, %if.end43.out_unlock_crit_edge, %if.end30.out_unlock_crit_edge, %if.then10.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %retval4.0 = phi i32 [ %call31, %if.end43.out_unlock_crit_edge ], [ %call31, %if.end30.out_unlock_crit_edge ], [ -2, %if.end.out_unlock_crit_edge ], [ -19, %if.then10.out_unlock_crit_edge ], [ %call31, %do.end.i87 ], [ %call31, %if.end.i95 ]
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  br label %out

out:                                              ; preds = %out_unlock, %entry.out_crit_edge
  %retval4.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %retval4.0, %out_unlock ]
  ret i32 %retval4.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @serio_unregister_driver(ptr noundef nonnull @psmouse_drv) #12
  %0 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  tail call void @psmouse_smbus_module_exit() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_module_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synaptics_module_init() #12
  %call = tail call i32 @psmouse_smbus_module_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.105, i32 noundef 655362, i32 noundef 1) #12
  store ptr %call1, ptr @kpsmoused_wq, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #15
  br label %err_smbus_exit

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__serio_register_driver(ptr noundef nonnull @psmouse_drv, ptr noundef null, ptr noundef nonnull @.str.66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_destroy_wq

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_destroy_wq:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  br label %err_smbus_exit

err_smbus_exit:                                   ; preds = %err_destroy_wq, %do.end
  %err.0 = phi i32 [ %call6, %err_destroy_wq ], [ -12, %do.end ]
  tail call void @psmouse_smbus_module_exit() #12
  br label %cleanup

cleanup:                                          ; preds = %err_smbus_exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_smbus_exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_set_maxproto(ptr noundef readonly %val, ptr nocapture noundef readonly %kp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %val) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.029.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %name1.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i, i32 5
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call)
  %cmp2.i = icmp eq i32 %call.i, %call
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.lor.lhs.false.i_crit_edge

for.body.i.lor.lhs.false.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call4.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %val, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_protocol_by_name.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %for.body.i.lor.lhs.false.i_crit_edge
  %alias.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i, i32 6
  %2 = ptrtoint ptr %alias.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alias.i, align 4
  %call5.i = tail call i32 @strlen(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %call)
  %cmp6.i = icmp eq i32 %call5.i, %call
  br i1 %cmp6.i, label %land.lhs.true7.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %call9.i = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull %val, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_protocol_by_name.exit

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

psmouse_protocol_by_name.exit:                    ; preds = %land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge, %land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge
  %retval.0.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %psmouse_protocol_by_name.exit.cleanup_crit_edge, label %lor.lhs.false

psmouse_protocol_by_name.exit.cleanup_crit_edge:  ; preds = %psmouse_protocol_by_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %psmouse_protocol_by_name.exit
  %4 = and i32 %i.029.i, 536870911
  %5 = lshr i32 524190, %4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.not = icmp eq i32 %6, 0
  br i1 %tobool3.not.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i, align 4
  %9 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %8, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %psmouse_protocol_by_name.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %psmouse_protocol_by_name.exit.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_get_maxproto(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 23
  br i1 %5, label %switch.hole_check, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 939, i32 noundef 9, ptr noundef null) #12
  br label %psmouse_protocol_by_type.exit

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 8122111, %switch.tableidx
  %6 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.lobit.not = icmp eq i32 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_get_maxproto, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %psmouse_protocol_by_type.exit

psmouse_protocol_by_type.exit:                    ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi ptr [ @psmouse_protocols, %do.end.i ], [ %switch.load, %switch.lookup ]
  %name = getelementptr inbounds %struct.psmouse_protocol, ptr %retval.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.58, ptr noundef %9)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2bare_detect(ptr nocapture noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %set_properties, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.49, ptr %vendor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.50, ptr %name, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @input_set_capability(ptr noundef %7, i32 noundef 1, i32 noundef 274) #12
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2pp_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thinking_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #12
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !311
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %param, align 1
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #12
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %param, align 1
  %call8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 60, ptr %param, align 1
  %call8.1 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 40, ptr %param, align 1
  %call8.2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %param, align 1
  %call8.3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %param, align 1
  %call8.4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 60, ptr %param, align 1
  %call8.5 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %10 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 40, ptr %param, align 1
  %call8.6 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 20, ptr %param, align 1
  %call8.7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %param, align 1
  %call8.8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %call10 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 754) #12
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp12.not = icmp ne i8 %14, 2
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp12.not, %set_properties.not
  %.mux = select i1 %cmp12.not, i32 -19, i32 0
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.then14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %16, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %18, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  %19 = load ptr, ptr %dev, align 4
  %add.ptr.i31 = getelementptr %struct.input_dev, ptr %19, i32 0, i32 6, i32 8
  %20 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i31, align 4
  %or.i32 = or i32 %21, 1048576
  store i32 %or.i32, ptr %add.ptr.i31, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %22 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.51, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %23 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.52, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %entry.cleanup_crit_edge ], [ 0, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genius_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 64 {
entry:
  %param = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %0 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %param, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 3)
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #12
  %call2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #12
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #12
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 230) #12
  %call6 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #12
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %8)
  %cmp11.not = icmp eq i8 %8, 51
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %10)
  %cmp16.not = icmp ne i8 %10, 85
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp16.not, %set_properties.not
  %.mux = select i1 %cmp16.not, i32 -19, i32 0
  br i1 %brmerge, label %lor.lhs.false13.cleanup_crit_edge, label %if.then18

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %12, i32 0, i32 6, i32 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %14, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  %15 = load ptr, ptr %dev, align 4
  %add.ptr.i41 = getelementptr %struct.input_dev, ptr %15, i32 0, i32 6, i32 8
  %16 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i41, align 4
  %or.i42 = or i32 %17, 1048576
  store i32 %or.i42, ptr %add.ptr.i41, align 4
  %18 = load ptr, ptr %dev, align 4
  %add.ptr.i43 = getelementptr %struct.input_dev, ptr %18, i32 0, i32 6, i32 8
  %19 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i43, align 4
  %or.i44 = or i32 %20, 524288
  store i32 %or.i44, ptr %add.ptr.i43, align 4
  %21 = load ptr, ptr %dev, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %relbit, align 4
  %or.i45 = or i32 %23, 256
  store i32 %or.i45, ptr %relbit, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %24 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.53, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %25 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.50, ptr %name, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %26 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %pktsize, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %lor.lhs.false13.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intellimouse_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #12
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !311
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -56, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 100, ptr %param, align 1
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 80, ptr %param, align 1
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %call9 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 754) #12
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp.not = icmp ne i8 %6, 3
  %set_properties.not = xor i1 %set_properties, true
  %brmerge = or i1 %cmp.not, %set_properties.not
  %.mux = select i1 %cmp.not, i32 -19, i32 0
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.then12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %entry
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %8, i32 0, i32 6, i32 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %10, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  %11 = load ptr, ptr %dev, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %relbit, align 4
  %or.i36 = or i32 %13, 256
  store i32 %or.i36, ptr %relbit, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.then17, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.49, ptr %vendor, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then12.if.end19_crit_edge
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.54, ptr %name, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %20 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %pktsize, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %entry.cleanup_crit_edge ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @im_explorer_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 64 {
entry:
  %param.i = alloca [2 x i8], align 1
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #12
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !311
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #12
  %2 = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !311
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -56, ptr %param.i, align 1
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i, i32 noundef 4339) #12
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 100, ptr %param.i, align 1
  %call4.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i, i32 noundef 4339) #12
  %6 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 80, ptr %param.i, align 1
  %call7.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i, i32 noundef 4339) #12
  %call9.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i, i32 noundef 754) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -56, ptr %param, align 1
  %call2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -56, ptr %param, align 1
  %call5 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 80, ptr %param, align 1
  %call8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %call10 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 754) #12
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp.not = icmp eq i8 %11, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -56, ptr %param, align 1
  %call15 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %13 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 80, ptr %param, align 1
  %call18 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 40, ptr %param, align 1
  %call21 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #12
  br i1 %set_properties, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.end
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %16, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %18, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  %19 = load ptr, ptr %dev, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %relbit, align 4
  %or.i62 = or i32 %21, 256
  store i32 %or.i62, ptr %relbit, align 4
  %22 = load ptr, ptr %dev, align 4
  %relbit27 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %relbit27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %relbit27, align 4
  %or.i63 = or i32 %24, 64
  store i32 %or.i63, ptr %relbit27, align 4
  %25 = load ptr, ptr %dev, align 4
  %add.ptr.i64 = getelementptr %struct.input_dev, ptr %25, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i64, align 4
  %or.i65 = or i32 %27, 524288
  store i32 %or.i65, ptr %add.ptr.i64, align 4
  %28 = load ptr, ptr %dev, align 4
  %add.ptr.i66 = getelementptr %struct.input_dev, ptr %28, i32 0, i32 6, i32 8
  %29 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i66, align 4
  %or.i67 = or i32 %30, 1048576
  store i32 %or.i67, ptr %add.ptr.i66, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vendor, align 4
  %tobool35.not = icmp eq ptr %32, null
  br i1 %tobool35.not, label %if.then36, label %if.then22.if.end38_crit_edge

if.then22.if.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.49, ptr %vendor, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then22.if.end38_crit_edge
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %tobool39.not = icmp eq ptr %35, null
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.55, ptr %name, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %37 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %pktsize, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end42 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_absolute(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_relative(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_smbus(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alps_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alps_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trackpoint_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @touchkit_ps2_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init_ps2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init_smbus(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsp_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsp_init(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cortron_detect(ptr nocapture noundef %psmouse, i1 noundef zeroext %set_properties) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %set_properties, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.56, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.57, ptr %name, align 4
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %add.ptr.i, align 4
  %6 = load ptr, ptr %dev, align 4
  %add.ptr.i7 = getelementptr %struct.input_dev, ptr %6, i32 0, i32 6, i32 8
  %7 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i7, align 4
  %or.i8 = or i32 %8, 524288
  store i32 %or.i8, ptr %add.ptr.i7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @focaltech_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @focaltech_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @byd_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @byd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_attr_show_protocol(ptr nocapture noundef readonly %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %name = getelementptr inbounds %struct.psmouse_protocol, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.58, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_protocol(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %param.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %name1.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i, i32 5
  %2 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %count)
  %cmp2.i = icmp eq i32 %call.i, %count
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.lor.lhs.false.i_crit_edge

for.body.i.lor.lhs.false.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call4.i = tail call i32 @strncmp(ptr noundef %3, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_protocol_by_name.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %for.body.i.lor.lhs.false.i_crit_edge
  %alias.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i, i32 6
  %4 = ptrtoint ptr %alias.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alias.i, align 4
  %call5.i = tail call i32 @strlen(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %count)
  %cmp6.i = icmp eq i32 %call5.i, %count
  br i1 %cmp6.i, label %land.lhs.true7.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %call9.i = tail call i32 @strncmp(ptr noundef %5, ptr noundef %buf, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_protocol_by_name.exit

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

psmouse_protocol_by_name.exit:                    ; preds = %land.lhs.true7.i.psmouse_protocol_by_name.exit_crit_edge, %land.lhs.true.i.psmouse_protocol_by_name.exit_crit_edge
  %retval.0.i = getelementptr [20 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %i.029.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %psmouse_protocol_by_name.exit.cleanup_crit_edge, label %if.end

psmouse_protocol_by_name.exit.cleanup_crit_edge:  ; preds = %psmouse_protocol_by_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %psmouse_protocol_by_name.exit
  %protocol = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %protocol, align 4
  %cmp = icmp eq ptr %7, %retval.0.i
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @input_allocate_device() #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %while.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end3
  %children = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 14
  %drv = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %9, %children
  br i1 %cmp.i.not, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  tail call void @serio_unregister_child_port(ptr noundef %1) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %10 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv, align 4
  %cmp15.not = icmp eq ptr %11, @psmouse_drv
  br i1 %cmp15.not, label %if.end17, label %while.body.if.then16_crit_edge

while.body.if.then16_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

do.end:                                           ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60) #15
  tail call void @input_free_device(ptr noundef nonnull %call4) #12
  br label %cleanup

if.then16:                                        ; preds = %while.body.2.if.then16_crit_edge, %while.body.1.if.then16_crit_edge, %while.body.if.then16_crit_edge
  tail call void @input_free_device(ptr noundef nonnull %call4) #12
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %protocol, align 4
  %cmp19 = icmp eq ptr %15, %retval.0.i
  br i1 %cmp19, label %if.end17.if.then20_crit_edge, label %while.cond.1

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

while.cond.1:                                     ; preds = %if.end17
  %16 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %children, align 4
  %cmp.i.not.1 = icmp eq ptr %17, %children
  br i1 %cmp.i.not.1, label %while.cond.1.while.end_crit_edge, label %while.body.1

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.1:                                     ; preds = %while.cond.1
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  tail call void @serio_unregister_child_port(ptr noundef %1) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %18 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv, align 4
  %cmp15.not.1 = icmp eq ptr %19, @psmouse_drv
  br i1 %cmp15.not.1, label %if.end17.1, label %while.body.1.if.then16_crit_edge

while.body.1.if.then16_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end17.1:                                       ; preds = %while.body.1
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %protocol, align 4
  %cmp19.1 = icmp eq ptr %21, %retval.0.i
  br i1 %cmp19.1, label %if.end17.1.if.then20_crit_edge, label %while.cond.2

if.end17.1.if.then20_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

while.cond.2:                                     ; preds = %if.end17.1
  %22 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %children, align 4
  %cmp.i.not.2 = icmp eq ptr %23, %children
  br i1 %cmp.i.not.2, label %while.cond.2.while.end_crit_edge, label %while.body.2

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.2:                                     ; preds = %while.cond.2
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  tail call void @serio_unregister_child_port(ptr noundef %1) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %24 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv, align 4
  %cmp15.not.2 = icmp eq ptr %25, @psmouse_drv
  br i1 %cmp15.not.2, label %if.end17.2, label %while.body.2.if.then16_crit_edge

while.body.2.if.then16_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end17.2:                                       ; preds = %while.body.2
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %protocol, align 4
  %cmp19.2 = icmp eq ptr %27, %retval.0.i
  br i1 %cmp19.2, label %if.end17.2.if.then20_crit_edge, label %while.cond.3

if.end17.2.if.then20_crit_edge:                   ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

while.cond.3:                                     ; preds = %if.end17.2
  %28 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %children, align 4
  %cmp.i.not.3 = icmp eq ptr %29, %children
  br i1 %cmp.i.not.3, label %while.cond.3.while.end_crit_edge, label %do.end

while.cond.3.while.end_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then20:                                        ; preds = %if.end17.2.if.then20_crit_edge, %if.end17.1.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  tail call void @input_free_device(ptr noundef nonnull %call4) #12
  br label %cleanup

while.end:                                        ; preds = %while.cond.3.while.end_crit_edge, %while.cond.2.while.end_crit_edge, %while.cond.1.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %parent22 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent22, align 4
  %tobool23.not = icmp eq ptr %31, null
  br i1 %tobool23.not, label %while.end.if.end33_crit_edge, label %land.lhs.true

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %while.end
  %id = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp24 = icmp eq i8 %33, 5
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then26:                                        ; preds = %land.lhs.true
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %pt_deactivate = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %pt_deactivate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pt_deactivate, align 4
  %tobool29.not = icmp eq ptr %37, null
  br i1 %tobool29.not, label %if.then26.if.end33_crit_edge, label %if.then30

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %37(ptr noundef %35) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then26.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %while.end.if.end33_crit_edge
  %parent.0 = phi ptr [ %35, %if.then30 ], [ %35, %if.then26.if.end33_crit_edge ], [ null, %land.lhs.true.if.end33_crit_edge ], [ null, %while.end.if.end33_crit_edge ]
  %dev34 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %38 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev34, align 4
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %protocol, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %42 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disconnect, align 4
  %tobool36.not = icmp eq ptr %43, null
  br i1 %tobool36.not, label %if.end33.if.end39_crit_edge, label %if.then37

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %43(ptr noundef %psmouse) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33.if.end39_crit_edge
  %44 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ps2dev, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %45, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %46 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %47 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %48 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 15
  %51 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last.i.i, align 4
  %52 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %53, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  %54 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call4, ptr %dev34, align 4
  %55 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ps2dev, align 4
  %lock.i.i142 = getelementptr inbounds %struct.serio, ptr %56, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i142) #12
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %state.i.i, align 4
  %58 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %59 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %pktcnt.i.i, align 1
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %62 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last.i.i, align 4
  %63 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i148 = getelementptr inbounds %struct.serio, ptr %64, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i148) #12
  %call41 = tail call fastcc i32 @psmouse_switch_protocol(ptr noundef %psmouse, ptr noundef nonnull %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #12
  %65 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %param.i, align 1, !annotation !311
  %66 = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %66, align 1, !annotation !311
  %call.i150 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 767) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  %call46 = call fastcc i32 @psmouse_switch_protocol(ptr noundef %psmouse, ptr noundef nonnull @psmouse_protocols)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge
  %68 = load i32, ptr @psmouse_max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.not.i154 = icmp eq i32 %68, 1
  br i1 %cmp.not.i154, label %if.end47.psmouse_initialize.exit_crit_edge, label %if.then.i

if.end47.psmouse_initialize.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_initialize.exit

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %set_rate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %69 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_rate.i, align 4
  %rate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %71 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rate.i, align 4
  call void %70(ptr noundef %psmouse, i32 noundef %72) #12
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %73 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_resolution.i, align 4
  %resolution.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 22
  %75 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %resolution.i, align 4
  call void %74(ptr noundef %psmouse, i32 noundef %76) #12
  %set_scale.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %77 = ptrtoint ptr %set_scale.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_scale.i, align 4
  call void %78(ptr noundef %psmouse, i32 noundef 0) #12
  br label %psmouse_initialize.exit

psmouse_initialize.exit:                          ; preds = %if.then.i, %if.end47.psmouse_initialize.exit_crit_edge
  %79 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ps2dev, align 4
  %lock.i.i157 = getelementptr inbounds %struct.serio, ptr %80, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i157) #12
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %state.i.i, align 4
  %82 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %83 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %pktcnt.i.i, align 1
  %84 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %86 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %last.i.i, align 4
  %87 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i163 = getelementptr inbounds %struct.serio, ptr %88, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i163) #12
  %89 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %protocol, align 4
  %smbus_companion = getelementptr inbounds %struct.psmouse_protocol, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %smbus_companion to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %smbus_companion, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool49.not = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev34, align 4
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %psmouse_initialize.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_free_device(ptr noundef %94) #12
  %95 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %dev34, align 4
  br label %if.end65

if.else:                                          ; preds = %psmouse_initialize.exit
  %call54 = call i32 @input_register_device(ptr noundef %94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else.if.end65_crit_edge, label %if.then56

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then56:                                        ; preds = %if.else
  %96 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %disconnect, align 4
  %tobool58.not = icmp eq ptr %97, null
  br i1 %tobool58.not, label %if.then56.if.end61_crit_edge, label %if.then59

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  call void %97(ptr noundef %psmouse) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then56.if.end61_crit_edge
  call void @psmouse_set_state(ptr noundef %psmouse, i32 noundef 0)
  call void @input_free_device(ptr noundef nonnull %call4) #12
  %98 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %39, ptr %dev34, align 4
  call void @psmouse_set_state(ptr noundef %psmouse, i32 noundef 1)
  %call63 = call fastcc i32 @psmouse_switch_protocol(ptr noundef %psmouse, ptr noundef %41)
  call fastcc void @psmouse_initialize(ptr noundef %psmouse)
  call void @psmouse_set_state(ptr noundef %psmouse, i32 noundef 3)
  br label %cleanup

if.end65:                                         ; preds = %if.else.if.end65_crit_edge, %if.then50
  %tobool66.not = icmp eq ptr %39, null
  br i1 %tobool66.not, label %if.end65.if.end68_crit_edge, label %if.then67

if.end65.if.end68_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_unregister_device(ptr noundef nonnull %39) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65.if.end68_crit_edge
  %tobool69.not = icmp eq ptr %parent.0, null
  br i1 %tobool69.not, label %if.end68.cleanup_crit_edge, label %land.lhs.true70

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true70:                                  ; preds = %if.end68
  %pt_activate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 35
  %99 = ptrtoint ptr %pt_activate to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pt_activate, align 4
  %tobool71.not = icmp eq ptr %100, null
  br i1 %tobool71.not, label %land.lhs.true70.cleanup_crit_edge, label %if.then72

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  call void %100(ptr noundef nonnull %parent.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %land.lhs.true70.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end61, %if.then20, %if.then16, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %psmouse_protocol_by_name.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -19, %if.then16 ], [ %count, %if.then20 ], [ %call54, %if.end61 ], [ -22, %psmouse_protocol_by_name.exit.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %count, %if.then72 ], [ %count, %land.lhs.true70.cleanup_crit_edge ], [ %count, %if.end68.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_child_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_switch_protocol(ptr noundef %psmouse, ptr noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %dev1 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 8
  %tobool.not = icmp eq ptr %proto, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %detect = getelementptr inbounds %struct.psmouse_protocol, ptr %proto, i32 0, i32 7
  %5 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %detect, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %init = getelementptr inbounds %struct.psmouse_protocol, ptr %proto, i32 0, i32 8
  %7 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5
  %11 = call ptr @memset(ptr %evbit.i, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %10, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %10, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %10, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %10, i32 noundef 2, i32 noundef 1) #12
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %13, 1
  store i32 %or.i.i, ptr %propbit.i, align 4
  %protocol.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @psmouse_protocols, ptr %protocol.i, align 4
  %set_rate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %15 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @psmouse_set_rate, ptr %set_rate.i, align 4
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %16 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i, align 4
  %set_scale.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %17 = ptrtoint ptr %set_scale.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @psmouse_set_scale, ptr %set_scale.i, align 4
  %poll.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %18 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @psmouse_poll, ptr %poll.i, align 4
  %protocol_handler.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %19 = ptrtoint ptr %protocol_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i, align 4
  %pktsize.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %20 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %pktsize.i, align 2
  %reconnect.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %21 = ptrtoint ptr %pt_activate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pt_activate.i, align 4
  %pt_deactivate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %22 = ptrtoint ptr %pt_deactivate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pt_deactivate.i, align 4
  %23 = call ptr @memset(ptr %reconnect.i, i32 0, i32 16)
  %24 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %detect, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %land.lhs.true7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %if.then
  %call = tail call i32 %25(ptr noundef %psmouse, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %if.then.if.end_crit_edge
  %init10 = getelementptr inbounds %struct.psmouse_protocol, ptr %proto, i32 0, i32 8
  %26 = ptrtoint ptr %init10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init10, align 4
  %tobool11.not = icmp eq ptr %27, null
  br i1 %tobool11.not, label %if.end.if.end20_crit_edge, label %land.lhs.true12

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true12:                                  ; preds = %if.end
  %call14 = tail call i32 %27(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end20_crit_edge

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %28 = load i32, ptr @psmouse_max_proto, align 4
  %call18 = tail call fastcc i32 @psmouse_extensions(ptr noundef %psmouse, i32 noundef %28, i1 noundef zeroext true)
  %switch.tableidx = add i32 %call18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 23
  br i1 %29, label %switch.hole_check, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 939, i32 noundef 9, ptr noundef null) #12
  br label %if.end20

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i32 8122111, %switch.tableidx
  %30 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %switch.lobit.not = icmp eq i32 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_switch_protocol, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end20

if.end20:                                         ; preds = %switch.lookup, %do.end.i, %land.lhs.true12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %selected_proto.0 = phi ptr [ %proto, %land.lhs.true12.if.end20_crit_edge ], [ %proto, %if.end.if.end20_crit_edge ], [ @psmouse_protocols, %do.end.i ], [ %switch.load, %switch.lookup ]
  %protocol = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %selected_proto.0, ptr %protocol, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %33 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp21 = icmp eq i8 %34, 3
  br i1 %cmp21, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %35 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %resync_time, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %resync_time25 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %36 = ptrtoint ptr %resync_time25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resync_time25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool26.not = icmp eq i32 %37, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %land.lhs.true27

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true27:                                  ; preds = %if.end24
  %poll = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %38 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %poll, align 4
  %call28 = tail call i32 %39(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end32_crit_edge, label %if.then30

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %resync_time25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %resync_time25, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true27.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %devname = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 19
  %name = getelementptr inbounds %struct.psmouse_protocol, ptr %selected_proto.0, i32 0, i32 5
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %43 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vendor, align 4
  %name33 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %45 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name33, align 4
  %call34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devname, i32 noundef 64, ptr noundef nonnull @.str.62, ptr noundef %42, ptr noundef %44, ptr noundef %46)
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %devname, ptr %1, align 8
  %phys = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 20
  %phys39 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %phys39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %phys, ptr %phys39, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 17, ptr %id, align 4
  %vendor41 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %vendor41 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %vendor41, align 2
  %51 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %protocol, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %conv44 = trunc i32 %54 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv44, ptr %product, align 4
  %model = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %56 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %model, align 4
  %conv46 = trunc i32 %57 to i16
  %version = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv46, ptr %version, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -1, %land.lhs.true7.cleanup_crit_edge ], [ -1, %land.lhs.true12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psmouse_initialize(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @psmouse_max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %1 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_rate, align 4
  %rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate, align 4
  tail call void %2(ptr noundef %psmouse, i32 noundef %4) #12
  %set_resolution = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %5 = ptrtoint ptr %set_resolution to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_resolution, align 4
  %resolution = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 22
  %7 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resolution, align 4
  tail call void %6(ptr noundef %psmouse, i32 noundef %8) #12
  %set_scale = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %9 = ptrtoint ptr %set_scale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_scale, align 4
  tail call void %10(ptr noundef %psmouse, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_extensions(ptr noundef %psmouse, i32 noundef %max_proto, i1 noundef zeroext %set_properties) unnamed_addr #0 align 64 {
entry:
  %max_proto.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max_proto, ptr %max_proto.addr, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev.i, align 4
  %id.i = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.i.not = icmp eq i8 %4, 5
  br i1 %cmp.i.not, label %entry.if.end15_crit_edge, label %if.end.i

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i:                                         ; preds = %entry
  br i1 %set_properties, label %if.then4.i, label %if.end.i.psmouse_do_detect.exit_crit_edge

if.end.i.psmouse_do_detect.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_do_detect.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  %7 = call ptr @memset(ptr %evbit.i.i, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %6, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %6, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %6, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %6, i32 noundef 2, i32 noundef 1) #12
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 4
  %8 = ptrtoint ptr %propbit.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %propbit.i.i, align 4
  %or.i.i.i = or i32 %9, 1
  store i32 %or.i.i.i, ptr %propbit.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %10 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @psmouse_protocols, ptr %protocol.i.i, align 4
  %set_rate.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %11 = ptrtoint ptr %set_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @psmouse_set_rate, ptr %set_rate.i.i, align 4
  %set_resolution.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %12 = ptrtoint ptr %set_resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i.i, align 4
  %set_scale.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %13 = ptrtoint ptr %set_scale.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @psmouse_set_scale, ptr %set_scale.i.i, align 4
  %poll.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %14 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @psmouse_poll, ptr %poll.i.i, align 4
  %protocol_handler.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %15 = ptrtoint ptr %protocol_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i.i, align 4
  %pktsize.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %16 = ptrtoint ptr %pktsize.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %pktsize.i.i, align 2
  %reconnect.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %17 = ptrtoint ptr %pt_activate.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pt_activate.i.i, align 4
  %pt_deactivate.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %18 = ptrtoint ptr %pt_deactivate.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pt_deactivate.i.i, align 4
  %19 = call ptr @memset(ptr %reconnect.i.i, i32 0, i32 16)
  br label %psmouse_do_detect.exit

psmouse_do_detect.exit:                           ; preds = %if.then4.i, %if.end.i.psmouse_do_detect.exit_crit_edge
  %call.i = tail call i32 @focaltech_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.i, label %if.then, label %psmouse_do_detect.exit.if.end15_crit_edge

psmouse_do_detect.exit.if.end15_crit_edge:        ; preds = %psmouse_do_detect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %psmouse_do_detect.exit
  %20 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp = icmp ugt i32 %21, 6
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end37.thread_crit_edge

if.then.if.end37.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread

land.lhs.true:                                    ; preds = %if.then
  br i1 %set_properties, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @focaltech_init(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end37.thread_crit_edge

lor.lhs.false.if.end37.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.thread

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37.thread:                                  ; preds = %lor.lhs.false.if.end37.thread_crit_edge, %if.then.if.end37.thread_crit_edge
  %22 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %max_proto.addr, align 4
  store i32 1, ptr @psmouse_max_proto, align 4
  br label %if.end95

if.end15:                                         ; preds = %psmouse_do_detect.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  %23 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr)
  %cmp16 = icmp ugt i32 %.pr, 6
  br i1 %cmp16, label %land.lhs.true17, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.end15
  %call4.i = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef nonnull @thinking_detect, ptr noundef %psmouse, i1 noundef zeroext false, i1 noundef zeroext %set_properties) #12
  br i1 %call4.i, label %land.lhs.true17.cleanup_crit_edge, label %if.end21thread-pre-split

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21thread-pre-split:                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr298 = load i32, ptr %max_proto.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.end15.if.end21_crit_edge
  %25 = phi i32 [ %.pr298, %if.end21thread-pre-split ], [ %.pr, %if.end15.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp22 = icmp ugt i32 %25, 1
  br i1 %cmp22, label %land.lhs.true23, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true23:                                  ; preds = %if.end21
  %26 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps2dev.i, align 4
  %id.i169 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %id.i169 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp.i170.not = icmp eq i8 %29, 5
  br i1 %cmp.i170.not, label %land.lhs.true23.if.end37_crit_edge, label %if.end.i171

land.lhs.true23.if.end37_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end.i171:                                      ; preds = %land.lhs.true23
  br i1 %set_properties, label %if.then4.i186, label %if.end.i171.psmouse_do_detect.exit191_crit_edge

if.end.i171.psmouse_do_detect.exit191_crit_edge:  ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_do_detect.exit191

if.then4.i186:                                    ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i172 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i172, align 4
  %evbit.i.i173 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 5
  %32 = call ptr @memset(ptr %evbit.i.i173, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %31, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %31, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %31, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %31, i32 noundef 2, i32 noundef 1) #12
  %propbit.i.i174 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 4
  %33 = ptrtoint ptr %propbit.i.i174 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %propbit.i.i174, align 4
  %or.i.i.i175 = or i32 %34, 1
  store i32 %or.i.i.i175, ptr %propbit.i.i174, align 4
  %protocol.i.i176 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %35 = ptrtoint ptr %protocol.i.i176 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @psmouse_protocols, ptr %protocol.i.i176, align 4
  %set_rate.i.i177 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %36 = ptrtoint ptr %set_rate.i.i177 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @psmouse_set_rate, ptr %set_rate.i.i177, align 4
  %set_resolution.i.i178 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %37 = ptrtoint ptr %set_resolution.i.i178 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i.i178, align 4
  %set_scale.i.i179 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %38 = ptrtoint ptr %set_scale.i.i179 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @psmouse_set_scale, ptr %set_scale.i.i179, align 4
  %poll.i.i180 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %39 = ptrtoint ptr %poll.i.i180 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @psmouse_poll, ptr %poll.i.i180, align 4
  %protocol_handler.i.i181 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %40 = ptrtoint ptr %protocol_handler.i.i181 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i.i181, align 4
  %pktsize.i.i182 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %41 = ptrtoint ptr %pktsize.i.i182 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %pktsize.i.i182, align 2
  %reconnect.i.i183 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i.i184 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %42 = ptrtoint ptr %pt_activate.i.i184 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pt_activate.i.i184, align 4
  %pt_deactivate.i.i185 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %43 = ptrtoint ptr %pt_deactivate.i.i185 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %pt_deactivate.i.i185, align 4
  %44 = call ptr @memset(ptr %reconnect.i.i183, i32 0, i32 16)
  br label %psmouse_do_detect.exit191

psmouse_do_detect.exit191:                        ; preds = %if.then4.i186, %if.end.i171.psmouse_do_detect.exit191_crit_edge
  %call.i187 = tail call i32 @synaptics_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %cmp7.i188 = icmp eq i32 %call.i187, 0
  br i1 %cmp7.i188, label %if.then26, label %psmouse_do_detect.exit191.if.end37_crit_edge

psmouse_do_detect.exit191.if.end37_crit_edge:     ; preds = %psmouse_do_detect.exit191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then26:                                        ; preds = %psmouse_do_detect.exit191
  %45 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp27 = icmp ugt i32 %46, 6
  br i1 %cmp27, label %if.then28, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then28:                                        ; preds = %if.then26
  br i1 %set_properties, label %if.end31, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.then28
  %call32 = tail call i32 @synaptics_init(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, -1
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 6, ptr %max_proto.addr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then26.if.end36_crit_edge
  tail call void @synaptics_reset(ptr noundef %psmouse) #12
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %psmouse_do_detect.exit191.if.end37_crit_edge, %land.lhs.true23.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  %synaptics_hardware.0.off0.ph = phi i1 [ false, %if.end21.if.end37_crit_edge ], [ false, %psmouse_do_detect.exit191.if.end37_crit_edge ], [ true, %if.end36 ], [ false, %land.lhs.true23.if.end37_crit_edge ]
  %48 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr301 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr301)
  %cmp38 = icmp ugt i32 %.pr301, 6
  br i1 %cmp38, label %land.lhs.true39, label %if.end37.if.end95_crit_edge

if.end37.if.end95_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true39:                                  ; preds = %if.end37
  %49 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ps2dev.i, align 4
  %id.i224 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %id.i224 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id.i224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %52)
  %cmp.i225.not = icmp eq i8 %52, 5
  br i1 %cmp.i225.not, label %land.lhs.true39.if.end43_crit_edge, label %if.end.i226

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end.i226:                                      ; preds = %land.lhs.true39
  br i1 %set_properties, label %psmouse_do_detect.exit246, label %psmouse_do_detect.exit246.thread306

psmouse_do_detect.exit246.thread306:              ; preds = %if.end.i226
  %call.i242307 = tail call i32 @cypress_detect(ptr noundef %psmouse, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242307)
  %cmp7.i243308 = icmp eq i32 %call.i242307, 0
  br i1 %cmp7.i243308, label %psmouse_do_detect.exit246.thread306.cleanup_crit_edge, label %psmouse_do_detect.exit246.thread306.if.end43_crit_edge

psmouse_do_detect.exit246.thread306.if.end43_crit_edge: ; preds = %psmouse_do_detect.exit246.thread306
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

psmouse_do_detect.exit246.thread306.cleanup_crit_edge: ; preds = %psmouse_do_detect.exit246.thread306
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

psmouse_do_detect.exit246:                        ; preds = %if.end.i226
  %dev.i.i227 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %53 = ptrtoint ptr %dev.i.i227 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i227, align 4
  %evbit.i.i228 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 5
  %55 = call ptr @memset(ptr %evbit.i.i228, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %54, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %54, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %54, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %54, i32 noundef 2, i32 noundef 1) #12
  %propbit.i.i229 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 4
  %56 = ptrtoint ptr %propbit.i.i229 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %propbit.i.i229, align 4
  %or.i.i.i230 = or i32 %57, 1
  store i32 %or.i.i.i230, ptr %propbit.i.i229, align 4
  %protocol.i.i231 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %58 = ptrtoint ptr %protocol.i.i231 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @psmouse_protocols, ptr %protocol.i.i231, align 4
  %set_rate.i.i232 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %59 = ptrtoint ptr %set_rate.i.i232 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @psmouse_set_rate, ptr %set_rate.i.i232, align 4
  %set_resolution.i.i233 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %60 = ptrtoint ptr %set_resolution.i.i233 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i.i233, align 4
  %set_scale.i.i234 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %61 = ptrtoint ptr %set_scale.i.i234 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @psmouse_set_scale, ptr %set_scale.i.i234, align 4
  %poll.i.i235 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %62 = ptrtoint ptr %poll.i.i235 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @psmouse_poll, ptr %poll.i.i235, align 4
  %protocol_handler.i.i236 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %63 = ptrtoint ptr %protocol_handler.i.i236 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i.i236, align 4
  %pktsize.i.i237 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %64 = ptrtoint ptr %pktsize.i.i237 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %pktsize.i.i237, align 2
  %reconnect.i.i238 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i.i239 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %65 = ptrtoint ptr %pt_activate.i.i239 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %pt_activate.i.i239, align 4
  %pt_deactivate.i.i240 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %66 = ptrtoint ptr %pt_deactivate.i.i240 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %pt_deactivate.i.i240, align 4
  %67 = call ptr @memset(ptr %reconnect.i.i238, i32 0, i32 16)
  %call.i242 = tail call i32 @cypress_detect(ptr noundef %psmouse, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %cmp7.i243 = icmp eq i32 %call.i242, 0
  br i1 %cmp7.i243, label %land.lhs.true.i194, label %psmouse_do_detect.exit246.if.end43_crit_edge

psmouse_do_detect.exit246.if.end43_crit_edge:     ; preds = %psmouse_do_detect.exit246
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true.i194:                               ; preds = %psmouse_do_detect.exit246
  %call13.i = tail call i32 @cypress_init(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i194.cleanup_crit_edge, label %if.then14.i

land.lhs.true.i194.cleanup_crit_edge:             ; preds = %land.lhs.true.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.i:                                      ; preds = %land.lhs.true.i194
  %68 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %69)
  %cmp15.i = icmp ugt i32 %69, 6
  br i1 %cmp15.i, label %if.then16.i, label %if.then14.i.if.end95_crit_edge

if.then14.i.if.end95_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %max_proto.addr, align 4
  br label %if.end95

if.end43:                                         ; preds = %psmouse_do_detect.exit246.if.end43_crit_edge, %psmouse_do_detect.exit246.thread306.if.end43_crit_edge, %land.lhs.true39.if.end43_crit_edge
  %71 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr312.pr = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr312.pr)
  %cmp44 = icmp ugt i32 %.pr312.pr, 6
  br i1 %cmp44, label %if.then45, label %if.end43.if.end95_crit_edge

if.end43.if.end95_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then45:                                        ; preds = %if.end43
  %call46 = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #12
  %72 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ps2dev.i, align 4
  %id.i248 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %id.i248 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %id.i248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %75)
  %cmp.i249.not = icmp eq i8 %75, 5
  br i1 %cmp.i249.not, label %if.then45.if.end51_crit_edge, label %if.end.i250

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end.i250:                                      ; preds = %if.then45
  br i1 %set_properties, label %psmouse_do_detect.exit270, label %psmouse_do_detect.exit270.thread317

psmouse_do_detect.exit270.thread317:              ; preds = %if.end.i250
  %call.i266318 = tail call i32 @alps_detect(ptr noundef %psmouse, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266318)
  %cmp7.i267319 = icmp eq i32 %call.i266318, 0
  br i1 %cmp7.i267319, label %psmouse_do_detect.exit270.thread317.cleanup_crit_edge, label %psmouse_do_detect.exit270.thread317.if.end51_crit_edge

psmouse_do_detect.exit270.thread317.if.end51_crit_edge: ; preds = %psmouse_do_detect.exit270.thread317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

psmouse_do_detect.exit270.thread317.cleanup_crit_edge: ; preds = %psmouse_do_detect.exit270.thread317
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

psmouse_do_detect.exit270:                        ; preds = %if.end.i250
  %dev.i.i251 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i.i251 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i251, align 4
  %evbit.i.i252 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 5
  %78 = call ptr @memset(ptr %evbit.i.i252, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %77, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %77, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %77, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %77, i32 noundef 2, i32 noundef 1) #12
  %propbit.i.i253 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 4
  %79 = ptrtoint ptr %propbit.i.i253 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %propbit.i.i253, align 4
  %or.i.i.i254 = or i32 %80, 1
  store i32 %or.i.i.i254, ptr %propbit.i.i253, align 4
  %protocol.i.i255 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %81 = ptrtoint ptr %protocol.i.i255 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @psmouse_protocols, ptr %protocol.i.i255, align 4
  %set_rate.i.i256 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %82 = ptrtoint ptr %set_rate.i.i256 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @psmouse_set_rate, ptr %set_rate.i.i256, align 4
  %set_resolution.i.i257 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %83 = ptrtoint ptr %set_resolution.i.i257 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i.i257, align 4
  %set_scale.i.i258 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %84 = ptrtoint ptr %set_scale.i.i258 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @psmouse_set_scale, ptr %set_scale.i.i258, align 4
  %poll.i.i259 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %85 = ptrtoint ptr %poll.i.i259 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @psmouse_poll, ptr %poll.i.i259, align 4
  %protocol_handler.i.i260 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %86 = ptrtoint ptr %protocol_handler.i.i260 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i.i260, align 4
  %pktsize.i.i261 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %87 = ptrtoint ptr %pktsize.i.i261 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 3, ptr %pktsize.i.i261, align 2
  %reconnect.i.i262 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i.i263 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %88 = ptrtoint ptr %pt_activate.i.i263 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %pt_activate.i.i263, align 4
  %pt_deactivate.i.i264 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %89 = ptrtoint ptr %pt_deactivate.i.i264 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %pt_deactivate.i.i264, align 4
  %90 = call ptr @memset(ptr %reconnect.i.i262, i32 0, i32 16)
  %call.i266 = tail call i32 @alps_detect(ptr noundef %psmouse, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %cmp7.i267 = icmp eq i32 %call.i266, 0
  br i1 %cmp7.i267, label %land.lhs.true.i199, label %psmouse_do_detect.exit270.if.end51_crit_edge

psmouse_do_detect.exit270.if.end51_crit_edge:     ; preds = %psmouse_do_detect.exit270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true.i199:                               ; preds = %psmouse_do_detect.exit270
  %call13.i200 = tail call i32 @alps_init(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i200)
  %cmp.not.i201 = icmp eq i32 %call13.i200, 0
  br i1 %cmp.not.i201, label %land.lhs.true.i199.cleanup_crit_edge, label %if.then14.i203

land.lhs.true.i199.cleanup_crit_edge:             ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.i203:                                   ; preds = %land.lhs.true.i199
  %91 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %92)
  %cmp15.i202 = icmp ugt i32 %92, 6
  br i1 %cmp15.i202, label %if.then16.i204, label %if.then14.i203.if.end95_crit_edge

if.then14.i203.if.end95_crit_edge:                ; preds = %if.then14.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then16.i204:                                   ; preds = %if.then14.i203
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 6, ptr %max_proto.addr, align 4
  br label %if.end95

if.end51:                                         ; preds = %psmouse_do_detect.exit270.if.end51_crit_edge, %psmouse_do_detect.exit270.thread317.if.end51_crit_edge, %if.then45.if.end51_crit_edge
  %94 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr323.pr = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr323.pr)
  %cmp52 = icmp ugt i32 %.pr323.pr, 6
  br i1 %cmp52, label %land.lhs.true59, label %if.end51.if.end95_crit_edge

if.end51.if.end95_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true59:                                  ; preds = %if.end51
  %95 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ps2dev.i, align 4
  %id.i272 = getelementptr inbounds %struct.serio, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %id.i272 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %id.i272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %98)
  %cmp.i273.not = icmp eq i8 %98, 5
  br i1 %cmp.i273.not, label %land.lhs.true59.if.end70_crit_edge, label %if.end.i274

land.lhs.true59.if.end70_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end.i274:                                      ; preds = %land.lhs.true59
  br i1 %set_properties, label %psmouse_do_detect.exit294, label %psmouse_do_detect.exit294.thread331

psmouse_do_detect.exit294.thread331:              ; preds = %if.end.i274
  %call.i290332 = tail call i32 @elantech_detect(ptr noundef %psmouse, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290332)
  %cmp7.i291333 = icmp eq i32 %call.i290332, 0
  br i1 %cmp7.i291333, label %psmouse_do_detect.exit294.thread331.cleanup_crit_edge, label %psmouse_do_detect.exit294.thread331.if.end70_crit_edge

psmouse_do_detect.exit294.thread331.if.end70_crit_edge: ; preds = %psmouse_do_detect.exit294.thread331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

psmouse_do_detect.exit294.thread331.cleanup_crit_edge: ; preds = %psmouse_do_detect.exit294.thread331
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

psmouse_do_detect.exit294:                        ; preds = %if.end.i274
  %dev.i.i275 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %99 = ptrtoint ptr %dev.i.i275 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i.i275, align 4
  %evbit.i.i276 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 5
  %101 = call ptr @memset(ptr %evbit.i.i276, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %100, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %100, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %100, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %100, i32 noundef 2, i32 noundef 1) #12
  %propbit.i.i277 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 4
  %102 = ptrtoint ptr %propbit.i.i277 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %propbit.i.i277, align 4
  %or.i.i.i278 = or i32 %103, 1
  store i32 %or.i.i.i278, ptr %propbit.i.i277, align 4
  %protocol.i.i279 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %104 = ptrtoint ptr %protocol.i.i279 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @psmouse_protocols, ptr %protocol.i.i279, align 4
  %set_rate.i.i280 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %105 = ptrtoint ptr %set_rate.i.i280 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @psmouse_set_rate, ptr %set_rate.i.i280, align 4
  %set_resolution.i.i281 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %106 = ptrtoint ptr %set_resolution.i.i281 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i.i281, align 4
  %set_scale.i.i282 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %107 = ptrtoint ptr %set_scale.i.i282 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @psmouse_set_scale, ptr %set_scale.i.i282, align 4
  %poll.i.i283 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %108 = ptrtoint ptr %poll.i.i283 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @psmouse_poll, ptr %poll.i.i283, align 4
  %protocol_handler.i.i284 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %109 = ptrtoint ptr %protocol_handler.i.i284 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i.i284, align 4
  %pktsize.i.i285 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %110 = ptrtoint ptr %pktsize.i.i285 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %pktsize.i.i285, align 2
  %reconnect.i.i286 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i.i287 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %111 = ptrtoint ptr %pt_activate.i.i287 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %pt_activate.i.i287, align 4
  %pt_deactivate.i.i288 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %112 = ptrtoint ptr %pt_deactivate.i.i288 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %pt_deactivate.i.i288, align 4
  %113 = call ptr @memset(ptr %reconnect.i.i286, i32 0, i32 16)
  %call.i290 = tail call i32 @elantech_detect(ptr noundef %psmouse, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %cmp7.i291 = icmp eq i32 %call.i290, 0
  br i1 %cmp7.i291, label %if.end65, label %psmouse_do_detect.exit294.if.end70_crit_edge

psmouse_do_detect.exit294.if.end70_crit_edge:     ; preds = %psmouse_do_detect.exit294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end65:                                         ; preds = %psmouse_do_detect.exit294
  %call66 = tail call i32 @elantech_init(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call66)
  %cmp67 = icmp sgt i32 %call66, -1
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %if.end65.if.end70_crit_edge

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70:                                         ; preds = %if.end65.if.end70_crit_edge, %psmouse_do_detect.exit294.if.end70_crit_edge, %psmouse_do_detect.exit294.thread331.if.end70_crit_edge, %land.lhs.true59.if.end70_crit_edge
  %114 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr337.pr.pr = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr337.pr.pr)
  %cmp71 = icmp ugt i32 %.pr337.pr.pr, 6
  br i1 %cmp71, label %if.then72, label %if.end70.if.end95_crit_edge

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then72:                                        ; preds = %if.end70
  %call4.i213 = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef nonnull @genius_detect, ptr noundef %psmouse, i1 noundef zeroext false, i1 noundef zeroext %set_properties) #12
  br i1 %call4.i213, label %if.then72.cleanup_crit_edge, label %if.end76

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  %call78 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 2, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call78, label %if.end76.cleanup_crit_edge, label %if.end80

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %call82 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 10, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call82, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %call86 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 11, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call86, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %115 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr342 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr342)
  %cmp90 = icmp ugt i32 %.pr342, 6
  br i1 %cmp90, label %land.lhs.true91, label %if.end89.if.end95_crit_edge

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true91:                                  ; preds = %if.end89
  %call93 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 15, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call93, label %land.lhs.true91.cleanup_crit_edge, label %land.lhs.true91.if.end95_crit_edge

land.lhs.true91.if.end95_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end95:                                         ; preds = %land.lhs.true91.if.end95_crit_edge, %if.end89.if.end95_crit_edge, %if.end70.if.end95_crit_edge, %if.end51.if.end95_crit_edge, %if.then16.i204, %if.then14.i203.if.end95_crit_edge, %if.end43.if.end95_crit_edge, %if.then16.i, %if.then14.i.if.end95_crit_edge, %if.end37.if.end95_crit_edge, %if.end37.thread
  %synaptics_hardware.0.off0304315326328340345 = phi i1 [ %synaptics_hardware.0.off0.ph, %land.lhs.true91.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.end89.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.end70.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.end43.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.then14.i.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.then16.i ], [ %synaptics_hardware.0.off0.ph, %if.end37.if.end95_crit_edge ], [ false, %if.end37.thread ], [ %synaptics_hardware.0.off0.ph, %if.then16.i204 ], [ %synaptics_hardware.0.off0.ph, %if.then14.i203.if.end95_crit_edge ], [ %synaptics_hardware.0.off0.ph, %if.end51.if.end95_crit_edge ]
  %call97 = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #12
  %call98 = tail call i32 @psmouse_reset(ptr noundef %psmouse)
  %116 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_proto.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %117)
  %cmp99 = icmp ugt i32 %117, 5
  br i1 %cmp99, label %land.lhs.true100, label %if.end95.if.end104_crit_edge

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

land.lhs.true100:                                 ; preds = %if.end95
  %call102 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 6, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call102, label %land.lhs.true100.cleanup_crit_edge, label %if.end104thread-pre-split

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end104thread-pre-split:                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %max_proto.addr to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr346 = load i32, ptr %max_proto.addr, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.end104thread-pre-split, %if.end95.if.end104_crit_edge
  %119 = phi i32 [ %.pr346, %if.end104thread-pre-split ], [ %117, %if.end95.if.end104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp105 = icmp ugt i32 %119, 4
  br i1 %cmp105, label %land.lhs.true106, label %if.end104.if.end110_crit_edge

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true106:                                 ; preds = %if.end104
  %call108 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 5, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %call108, label %land.lhs.true106.cleanup_crit_edge, label %land.lhs.true106.if.end110_crit_edge

land.lhs.true106.if.end110_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end110:                                        ; preds = %land.lhs.true106.if.end110_crit_edge, %if.end104.if.end110_crit_edge
  %call112 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef 1, ptr noundef nonnull %max_proto.addr, i1 noundef zeroext %set_properties, i1 noundef zeroext true)
  br i1 %synaptics_hardware.0.off0304315326328340345, label %if.then114, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %call115 = tail call i32 @psmouse_reset(ptr noundef %psmouse)
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end110.cleanup_crit_edge, %land.lhs.true106.cleanup_crit_edge, %land.lhs.true100.cleanup_crit_edge, %land.lhs.true91.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %psmouse_do_detect.exit294.thread331.cleanup_crit_edge, %land.lhs.true.i199.cleanup_crit_edge, %psmouse_do_detect.exit270.thread317.cleanup_crit_edge, %land.lhs.true.i194.cleanup_crit_edge, %psmouse_do_detect.exit246.thread306.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 18, %lor.lhs.false.cleanup_crit_edge ], [ 18, %land.lhs.true.cleanup_crit_edge ], [ 7, %if.then28.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ 2, %if.end76.cleanup_crit_edge ], [ 10, %if.end80.cleanup_crit_edge ], [ 11, %if.end84.cleanup_crit_edge ], [ 15, %land.lhs.true91.cleanup_crit_edge ], [ 6, %land.lhs.true100.cleanup_crit_edge ], [ 5, %land.lhs.true106.cleanup_crit_edge ], [ 1, %if.then114 ], [ 1, %if.end110.cleanup_crit_edge ], [ 17, %psmouse_do_detect.exit246.thread306.cleanup_crit_edge ], [ 8, %psmouse_do_detect.exit270.thread317.cleanup_crit_edge ], [ 14, %psmouse_do_detect.exit294.thread331.cleanup_crit_edge ], [ 3, %land.lhs.true17.cleanup_crit_edge ], [ 17, %land.lhs.true.i194.cleanup_crit_edge ], [ 8, %land.lhs.true.i199.cleanup_crit_edge ], [ 4, %if.then72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_set_rate(ptr noundef %psmouse, i32 noundef %rate) #0 align 64 {
entry:
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #12
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr @psmouse_set_rate.rates, i32 0, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ugt i32 %conv, %rate
  %inc = add i32 %i.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %r, align 1
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %r, i32 noundef 4339) #12
  %3 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %r, align 1
  %conv3 = zext i8 %4 to i32
  %rate4 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 21
  %5 = ptrtoint ptr %rate4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv3, ptr %rate4, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_set_scale(ptr noundef %psmouse, i32 noundef %scale) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %scale)
  %cmp = icmp eq i32 %scale, 1
  %cond = select i1 %cmp, i32 231, i32 230
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef %cond) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_poll(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %0 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pktsize, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 235
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %packet, i32 noundef %or) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @psmouse_do_detect(ptr nocapture noundef readonly %detect, ptr noundef %psmouse, i1 noundef zeroext %allow_passthrough, i1 noundef zeroext %set_properties) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %id = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ne i8 %3, 5
  %brmerge = or i1 %cmp, %allow_passthrough
  br i1 %brmerge, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  br i1 %set_properties, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  %6 = call ptr @memset(ptr %evbit.i, i32 0, i32 116)
  tail call void @input_set_capability(ptr noundef %5, i32 noundef 1, i32 noundef 272) #12
  tail call void @input_set_capability(ptr noundef %5, i32 noundef 1, i32 noundef 273) #12
  tail call void @input_set_capability(ptr noundef %5, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %5, i32 noundef 2, i32 noundef 1) #12
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %propbit.i, align 4
  %or.i.i = or i32 %8, 1
  store i32 %or.i.i, ptr %propbit.i, align 4
  %protocol.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 6
  %9 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @psmouse_protocols, ptr %protocol.i, align 4
  %set_rate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %10 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @psmouse_set_rate, ptr %set_rate.i, align 4
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %11 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @psmouse_set_resolution, ptr %set_resolution.i, align 4
  %set_scale.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %12 = ptrtoint ptr %set_scale.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @psmouse_set_scale, ptr %set_scale.i, align 4
  %poll.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %13 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @psmouse_poll, ptr %poll.i, align 4
  %protocol_handler.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %14 = ptrtoint ptr %protocol_handler.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @psmouse_process_byte, ptr %protocol_handler.i, align 4
  %pktsize.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %15 = ptrtoint ptr %pktsize.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %pktsize.i, align 2
  %reconnect.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %pt_activate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 35
  %16 = ptrtoint ptr %pt_activate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pt_activate.i, align 4
  %pt_deactivate.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 36
  %17 = ptrtoint ptr %pt_deactivate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pt_deactivate.i, align 4
  %18 = call ptr @memset(ptr %reconnect.i, i32 0, i32 16)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call = tail call i32 %detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp7, %if.end5 ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %psmouse, i32 noundef %type, ptr nocapture noundef %max_proto, i1 noundef zeroext %set_properties, i1 noundef zeroext %init_allowed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 23
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 8122111, %switch.tableidx
  %1 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.lobit.not = icmp eq i32 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_try_protocol, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %detect = getelementptr inbounds %struct.psmouse_protocol, ptr %switch.load, i32 0, i32 7
  %3 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %detect, align 4
  %try_passthru = getelementptr inbounds %struct.psmouse_protocol, ptr %switch.load, i32 0, i32 3
  %5 = ptrtoint ptr %try_passthru to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %try_passthru, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2 = icmp ne i8 %6, 0
  %call4 = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef %4, ptr noundef %psmouse, i1 noundef zeroext %tobool2, i1 noundef zeroext %set_properties)
  %7 = and i1 %call4, %set_properties
  br i1 %7, label %land.lhs.true, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %switch.lookup
  %init = getelementptr inbounds %struct.psmouse_protocol, ptr %switch.load, i32 0, i32 8
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %tobool8.not = icmp ne ptr %9, null
  %10 = and i1 %tobool8.not, %init_allowed
  br i1 %10, label %if.then11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %call13 = tail call i32 %9(ptr noundef %psmouse) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %if.then11.cleanup_crit_edge, label %if.then14

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  %11 = ptrtoint ptr %max_proto to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp15 = icmp ugt i32 %12, 6
  br i1 %cmp15, label %if.then16, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %max_proto to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %max_proto, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then14.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call4, %switch.lookup.cleanup_crit_edge ], [ false, %if.then16 ], [ false, %if.then14.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %if.then11.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %switch.hole_check.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synaptics_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end.if.then7_crit_edge, !prof !312

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.rhs:                                          ; preds = %if.end
  %and1 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.rhs.if.end19_crit_edge, label %land.rhs

lor.rhs.if.end19_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.rhs:                                         ; preds = %lor.rhs
  %protocol = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol, align 4
  %ignore_parity = getelementptr inbounds %struct.psmouse_protocol, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ignore_parity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ignore_parity, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.rhs.if.then7_crit_edge, label %land.rhs.if.end19_crit_edge, !prof !313

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.rhs.if.then7_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %land.rhs.if.then7_crit_edge, %if.end.if.then7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp9 = icmp eq i32 %3, 4
  br i1 %cmp9, label %do.end, label %if.then7.if.end17_crit_edge

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %cond = select i1 %tobool.not, ptr @.str.70, ptr @.str.69
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.70, ptr @.str.71
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull %cond, ptr noundef nonnull %cond16) #15
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then7.if.end17_crit_edge
  %ps2dev18 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  tail call void @ps2_cmd_aborted(ptr noundef %ps2dev18) #12
  br label %out

if.end19:                                         ; preds = %land.rhs.if.end19_crit_edge, %lor.rhs.if.end19_crit_edge
  %and20 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  %oob_data_type.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %oob_data_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %oob_data_type.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %11, label %do.end.i [
    i8 0, label %if.then22.psmouse_handle_oob_data.exit_crit_edge
    i8 1, label %sw.bb2.i
  ]

if.then22.psmouse_handle_oob_data.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_handle_oob_data.exit

sw.bb2.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %conv.i.i = zext i8 %data to i32
  %and.i.i = and i32 %conv.i.i, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 272, i32 noundef %and.i.i) #12
  %and2.i.i = lshr i32 %conv.i.i, 2
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 274, i32 noundef %and2.lobit.i.i) #12
  %and4.i.i = lshr i32 %conv.i.i, 1
  %and4.lobit.i.i = and i32 %and4.i.i, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 273, i32 noundef %and4.lobit.i.i) #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %extra_buttons.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %extra_buttons.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %data, ptr %extra_buttons.i, align 4
  br label %psmouse_handle_oob_data.exit

do.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %11 to i32
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps2dev.i, align 4
  %dev5.i = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i, ptr noundef nonnull @.str.76, i32 noundef %conv.i) #15
  br label %psmouse_handle_oob_data.exit

psmouse_handle_oob_data.exit:                     ; preds = %do.end.i, %sw.bb2.i, %if.then22.psmouse_handle_oob_data.exit_crit_edge
  %.sink.i = phi i8 [ 0, %do.end.i ], [ 0, %sw.bb2.i ], [ %data, %if.then22.psmouse_handle_oob_data.exit_crit_edge ]
  %20 = ptrtoint ptr %oob_data_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %oob_data_type.i, align 1
  br label %out

if.end23:                                         ; preds = %if.end19
  %ps2dev24 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %flags25 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags25, align 4
  %and26 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.end39_crit_edge, label %if.then34, !prof !312

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34:                                        ; preds = %if.end23
  %call36 = tail call zeroext i1 @ps2_handle_ack(ptr noundef %ps2dev24, i8 noundef zeroext %data) #12
  br i1 %call36, label %if.then34.out_crit_edge, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then34.out_crit_edge:                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %23 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags25, align 4
  %and42 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.if.end55_crit_edge, label %if.then50, !prof !312

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then50:                                        ; preds = %if.end39
  %call52 = tail call zeroext i1 @ps2_handle_response(ptr noundef %ps2dev24, i8 noundef zeroext %data) #12
  br i1 %call52, label %if.then50.out_crit_edge, label %if.then50.if.end55_crit_edge

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then50.out_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end55:                                         ; preds = %if.then50.if.end55_crit_edge, %if.end39.if.end55_crit_edge
  %dev56 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @pm_wakeup_dev_event(ptr noundef %dev56, i32 noundef 0, i1 noundef zeroext false) #12
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp58 = icmp ult i32 %26, 3
  br i1 %cmp58, label %if.end55.out_crit_edge, label %if.end60

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp62 = icmp eq i32 %26, 4
  br i1 %cmp62, label %land.lhs.true, label %if.end60.if.end76_crit_edge

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end60
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool63.not = icmp eq i8 %28, 0
  br i1 %tobool63.not, label %land.lhs.true.if.end76_crit_edge, label %land.lhs.true64

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

land.lhs.true64:                                  ; preds = %land.lhs.true
  %last = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last, align 4
  %add = add i32 %30, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp65 = icmp slt i32 %sub, 0
  br i1 %cmp65, label %do.end70, label %land.lhs.true64.if.end76_crit_edge

land.lhs.true64.if.end76_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

do.end70:                                         ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %ps2dev24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps2dev24, align 4
  %dev73 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  %name = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %phys = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 20
  %conv75 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73, ptr noundef nonnull @.str.73, ptr noundef %35, ptr noundef %phys, i32 noundef %conv75) #15
  %packet = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %packet, align 4
  %badbyte = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %badbyte to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %badbyte, align 4
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %state, align 4
  %out_of_sync_cnt.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %out_of_sync_cnt.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %out_of_sync_cnt.i, align 4
  %41 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %pktcnt, align 1
  %42 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %last, align 4
  %resync_work = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 3
  %45 = load ptr, ptr @kpsmoused_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %resync_work, i32 noundef 0) #12
  br label %out

if.end76:                                         ; preds = %land.lhs.true64.if.end76_crit_edge, %land.lhs.true.if.end76_crit_edge, %if.end60.if.end76_crit_edge
  %packet77 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 7
  %pktcnt78 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pktcnt78, align 1
  %inc = add i8 %47, 1
  store i8 %inc, ptr %pktcnt78, align 1
  %idxprom = zext i8 %47 to i32
  %arrayidx79 = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %data, ptr %arrayidx79, align 1
  %49 = ptrtoint ptr %packet77 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %packet77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %50)
  %cmp83 = icmp eq i8 %50, -86
  br i1 %cmp83, label %land.rhs85, label %if.end76.if.end131_crit_edge

if.end76.if.end131_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.rhs85:                                       ; preds = %if.end76
  %51 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pktcnt78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp88 = icmp ult i8 %52, 3
  br i1 %cmp88, label %if.then97, label %land.rhs85.if.end131_crit_edge, !prof !313

land.rhs85.if.end131_crit_edge:                   ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then97:                                        ; preds = %land.rhs85
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp100 = icmp eq i8 %52, 1
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %last103 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %last103 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last103, align 4
  br label %out

if.end104:                                        ; preds = %if.then97
  %arrayidx106 = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp108 = icmp eq i8 %56, 0
  br i1 %cmp108, label %if.end104.if.then119_crit_edge, label %lor.lhs.false

if.end104.if.then119_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then119

lor.lhs.false:                                    ; preds = %if.end104
  %protocol110 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %protocol110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %protocol110, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %60)
  %cmp111 = icmp eq i32 %60, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %56)
  %cmp117 = icmp eq i8 %56, -86
  %or.cond = select i1 %cmp111, i1 %cmp117, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then119_crit_edge, label %if.end120

lor.lhs.false.if.then119_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then119

if.then119:                                       ; preds = %lor.lhs.false.if.then119_crit_edge, %if.end104.if.then119_crit_edge
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %state, align 4
  %out_of_sync_cnt.i217 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %62 = ptrtoint ptr %out_of_sync_cnt.i217 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %out_of_sync_cnt.i217, align 4
  %63 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %pktcnt78, align 1
  %64 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %flags25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %last.i220 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %66 = ptrtoint ptr %last.i220 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %last.i220, align 4
  tail call void @serio_reconnect(ptr noundef %serio) #12
  br label %out

if.end120:                                        ; preds = %lor.lhs.false
  %67 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %pktcnt78, align 1
  %call122 = tail call fastcc i32 @psmouse_handle_byte(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end120.out_crit_edge

if.end120.out_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pktcnt78, align 1
  %inc128 = add i8 %69, 1
  store i8 %inc128, ptr %pktcnt78, align 1
  %idxprom129 = zext i8 %69 to i32
  %arrayidx130 = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 %idxprom129
  %70 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %data, ptr %arrayidx130, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.end125, %land.rhs85.if.end131_crit_edge, %if.end76.if.end131_crit_edge
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp133 = icmp eq i32 %72, 4
  br i1 %cmp133, label %land.lhs.true135, label %if.end131.if.end154_crit_edge

if.end131.if.end154_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true135:                                 ; preds = %if.end131
  %73 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pktcnt78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp138 = icmp eq i8 %74, 1
  br i1 %cmp138, label %land.lhs.true140, label %land.lhs.true135.if.end154_crit_edge

land.lhs.true135.if.end154_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 24
  %75 = ptrtoint ptr %resync_time to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %resync_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool141.not = icmp eq i32 %76, 0
  br i1 %tobool141.not, label %land.lhs.true140.if.end154_crit_edge, label %land.lhs.true142

land.lhs.true140.if.end154_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true142:                                 ; preds = %land.lhs.true140
  %last143 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %77 = ptrtoint ptr %last143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %last143, align 4
  %mul = mul i32 %76, 100
  %add145 = add i32 %78, %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub146 = sub i32 %add145, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub146)
  %cmp147 = icmp slt i32 %sub146, 0
  br i1 %cmp147, label %if.then149, label %land.lhs.true142.if.end154_crit_edge

land.lhs.true142.if.end154_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then149:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %packet77 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %packet77, align 4
  %badbyte152 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %badbyte152 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %badbyte152, align 4
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %state, align 4
  %out_of_sync_cnt.i222 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %84 = ptrtoint ptr %out_of_sync_cnt.i222 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %out_of_sync_cnt.i222, align 4
  %85 = ptrtoint ptr %pktcnt78 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %pktcnt78, align 1
  %86 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %flags25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %88 = ptrtoint ptr %last143 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last143, align 4
  %resync_work153 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 3
  %89 = load ptr, ptr @kpsmoused_wq, align 4
  %call.i.i226 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %resync_work153, i32 noundef 0) #12
  br label %out

if.end154:                                        ; preds = %land.lhs.true142.if.end154_crit_edge, %land.lhs.true140.if.end154_crit_edge, %land.lhs.true135.if.end154_crit_edge, %if.end131.if.end154_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %last155 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %91 = ptrtoint ptr %last155 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %last155, align 4
  %call156 = tail call fastcc i32 @psmouse_handle_byte(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end154, %if.then149, %if.end120.out_crit_edge, %if.then119, %if.then102, %do.end70, %if.end55.out_crit_edge, %if.then50.out_crit_edge, %if.then34.out_crit_edge, %psmouse_handle_oob_data.exit, %if.end17, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_connect(ptr noundef %serio, ptr noundef %drv) #0 align 64 {
entry:
  %param.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %parent2 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 16
  %9 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  %13 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last.i.i.i, align 4
  %14 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %5, %do.end.i ], [ %5, %if.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 480) #18
  %call7 = tail call ptr @input_allocate_device() #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.err_free_crit_edge, label %lor.lhs.false

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

lor.lhs.false:                                    ; preds = %if.end
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %lor.lhs.false.err_free_crit_edge, label %if.end11

lor.lhs.false.err_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end11:                                         ; preds = %lor.lhs.false
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 2
  tail call void @ps2_init(ptr noundef %ps2dev, ptr noundef %serio) #12
  %resync_work = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %resync_work, i32 noundef 0) #12
  %17 = ptrtoint ptr %resync_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %resync_work, align 4
  %lockdep_map = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.87, ptr noundef nonnull @psmouse_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry19, ptr %entry19, align 8
  %prev.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @psmouse_resync, ptr %func, align 8
  %timer = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.89, ptr noundef nonnull @psmouse_connect.__key.88) #12
  %dev = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7, ptr %dev, align 4
  %phys = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 20
  %phys28 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.90, ptr noundef %phys28)
  %22 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps2dev, align 8
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 18
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last.i.i, align 8
  %30 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps2dev, align 8
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  %driver_data.i.i155 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %32 = ptrtoint ptr %driver_data.i.i155 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i155, align 4
  %call31 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end11.err_clear_drvdata_crit_edge

if.end11.err_clear_drvdata_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clear_drvdata

if.end34:                                         ; preds = %if.end11
  %id35 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %33 = ptrtoint ptr %id35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %id35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %cmp38 = icmp eq i8 %34, 5
  br i1 %cmp38, label %if.then40, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end34.if.end41_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #12
  %35 = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %35, align 1, !annotation !311
  %37 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -91, ptr %param.i, align 1
  %call.i156 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param.i, i32 noundef 754) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.end.i158, label %psmouse_probe.exit

if.end.i158:                                      ; preds = %if.end41
  %38 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %param.i, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %39, label %psmouse_probe.exit.thread197 [
    i8 0, label %if.end.i158.if.end19.i_crit_edge
    i8 3, label %if.end.i158.if.end19.i_crit_edge206
    i8 4, label %if.end.i158.if.end19.i_crit_edge207
    i8 -1, label %if.end.i158.if.end19.i_crit_edge208
  ]

if.end.i158.if.end19.i_crit_edge208:              ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i158.if.end19.i_crit_edge207:              ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i158.if.end19.i_crit_edge206:              ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i158.if.end19.i_crit_edge:                 ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

psmouse_probe.exit.thread197:                     ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  br label %err_close_serio

if.end19.i:                                       ; preds = %if.end.i158.if.end19.i_crit_edge, %if.end.i158.if.end19.i_crit_edge206, %if.end.i158.if.end19.i_crit_edge207, %if.end.i158.if.end19.i_crit_edge208
  %call20.i = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 246) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.psmouse_probe.exit.thread_crit_edge, label %do.end.i161

if.end19.i.psmouse_probe.exit.thread_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_probe.exit.thread

do.end.i161:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps2dev, align 8
  %dev.i159 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  %phys.i160 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i159, ptr noundef nonnull @.str.96, ptr noundef %phys.i160, i32 noundef %call20.i) #15
  br label %psmouse_probe.exit.thread

psmouse_probe.exit.thread:                        ; preds = %do.end.i161, %if.end19.i.psmouse_probe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  br label %if.end46

psmouse_probe.exit:                               ; preds = %if.end41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp43 = icmp slt i32 %call.i156, 0
  br i1 %cmp43, label %psmouse_probe.exit.err_close_serio_crit_edge, label %psmouse_probe.exit.if.end46_crit_edge

psmouse_probe.exit.if.end46_crit_edge:            ; preds = %psmouse_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

psmouse_probe.exit.err_close_serio_crit_edge:     ; preds = %psmouse_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_close_serio

if.end46:                                         ; preds = %psmouse_probe.exit.if.end46_crit_edge, %psmouse_probe.exit.thread
  %43 = load i32, ptr @psmouse_rate, align 4
  %rate = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 21
  %44 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rate, align 8
  %45 = load i32, ptr @psmouse_resolution, align 4
  %resolution = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 22
  %46 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %resolution, align 4
  %47 = load i32, ptr @psmouse_resetafter, align 4
  %resetafter = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 23
  %48 = ptrtoint ptr %resetafter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %resetafter, align 8
  %tobool47.not = icmp eq ptr %parent.0, null
  br i1 %tobool47.not, label %cond.false, label %if.end46.cond.end_crit_edge

if.end46.cond.end_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %49 = load i32, ptr @psmouse_resync_time, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end46.cond.end_crit_edge
  %cond = phi i32 [ %49, %cond.false ], [ 0, %if.end46.cond.end_crit_edge ]
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 24
  %50 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond, ptr %resync_time, align 4
  %51 = load i8, ptr @psmouse_smartscroll, align 1, !range !310
  %smartscroll = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 25
  %52 = ptrtoint ptr %smartscroll to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %smartscroll, align 8
  %call49 = call fastcc i32 @psmouse_switch_protocol(ptr noundef nonnull %call7.i.i, ptr noundef null)
  %protocol = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %protocol, align 8
  %smbus_companion = getelementptr inbounds %struct.psmouse_protocol, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %smbus_companion to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %smbus_companion, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool50.not = icmp eq i8 %56, 0
  br i1 %tobool50.not, label %if.then51, label %if.else

if.then51:                                        ; preds = %cond.end
  %57 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ps2dev, align 8
  %lock.i.i163 = getelementptr inbounds %struct.serio, ptr %58, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i163) #12
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %state.i.i, align 4
  %60 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %61 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %pktcnt.i.i, align 1
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %64 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %last.i.i, align 8
  %65 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ps2dev, align 8
  %lock.i5.i169 = getelementptr inbounds %struct.serio, ptr %66, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i169) #12
  %67 = load i32, ptr @psmouse_max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.not.i = icmp eq i32 %67, 1
  br i1 %cmp.not.i, label %if.then51.psmouse_initialize.exit_crit_edge, label %if.then.i

if.then51.psmouse_initialize.exit_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_initialize.exit

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %set_rate.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 27
  %68 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_rate.i, align 8
  %70 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rate, align 8
  call void %69(ptr noundef nonnull %call7.i.i, i32 noundef %71) #12
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 28
  %72 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_resolution.i, align 4
  %74 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resolution, align 4
  call void %73(ptr noundef nonnull %call7.i.i, i32 noundef %75) #12
  %set_scale.i = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 29
  %76 = ptrtoint ptr %set_scale.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_scale.i, align 8
  call void %77(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  br label %psmouse_initialize.exit

psmouse_initialize.exit:                          ; preds = %if.then.i, %if.then51.psmouse_initialize.exit_crit_edge
  %call52 = call i32 @input_register_device(ptr noundef nonnull %call7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %psmouse_initialize.exit.if.end57_crit_edge, label %psmouse_initialize.exit.err_protocol_disconnect_crit_edge

psmouse_initialize.exit.err_protocol_disconnect_crit_edge: ; preds = %psmouse_initialize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_protocol_disconnect

psmouse_initialize.exit.if.end57_crit_edge:       ; preds = %psmouse_initialize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_free_device(ptr noundef nonnull %call7) #12
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %dev, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %psmouse_initialize.exit.if.end57_crit_edge
  %input_dev.0 = phi ptr [ null, %if.else ], [ %call7, %psmouse_initialize.exit.if.end57_crit_edge ]
  br i1 %tobool47.not, label %if.end63.thread, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end57
  %pt_activate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 35
  %79 = ptrtoint ptr %pt_activate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pt_activate, align 4
  %tobool60.not = icmp eq ptr %80, null
  br i1 %tobool60.not, label %land.lhs.true59.if.end63_crit_edge, label %if.then61

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  call void %80(ptr noundef nonnull %parent.0) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true59.if.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %call65 = call i32 @sysfs_create_group(ptr noundef %dev64, ptr noundef nonnull @psmouse_attribute_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end63.if.end68_crit_edge, label %land.lhs.true80.critedge

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end63.thread:                                  ; preds = %if.end57
  %dev64200 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %call65201 = call i32 @sysfs_create_group(ptr noundef %dev64200, ptr noundef nonnull @psmouse_attribute_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65201)
  %tobool66.not202 = icmp eq i32 %call65201, 0
  br i1 %tobool66.not202, label %if.end63.thread.if.end68_crit_edge, label %if.end63.thread.if.end84_crit_edge

if.end63.thread.if.end84_crit_edge:               ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.end63.thread.if.end68_crit_edge:               ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end68:                                         ; preds = %if.end63.thread.if.end68_crit_edge, %if.end63.if.end68_crit_edge
  %81 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %protocol, align 8
  %smbus_companion70 = getelementptr inbounds %struct.psmouse_protocol, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %smbus_companion70 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %smbus_companion70, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool71.not = icmp eq i8 %84, 0
  br i1 %tobool71.not, label %if.then72, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %call73 = call i32 @psmouse_activate(ptr noundef nonnull %call7.i.i)
  br label %out

out:                                              ; preds = %err_free, %if.then72, %if.end68.out_crit_edge
  %retval1.0 = phi i32 [ %error.3, %err_free ], [ 0, %if.end68.out_crit_edge ], [ 0, %if.then72 ]
  %tobool75.not = icmp eq ptr %parent.0, null
  br i1 %tobool75.not, label %out.if.end78_crit_edge, label %if.then76

out.if.end78_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then76:                                        ; preds = %out
  %ps2dev.i171 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2
  %call.i172 = call i32 @ps2_command(ptr noundef %ps2dev.i171, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i173 = icmp eq i32 %call.i172, 0
  %85 = ptrtoint ptr %ps2dev.i171 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ps2dev.i171, align 4
  br i1 %tobool.not.i173, label %if.end.i184, label %do.end.i176

do.end.i176:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i174 = getelementptr inbounds %struct.serio, ptr %86, i32 0, i32 18
  %phys.i175 = getelementptr inbounds %struct.serio, ptr %86, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i174, ptr noundef nonnull @.str.2, ptr noundef %phys.i175) #15
  br label %if.end78

if.end.i184:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i177 = getelementptr inbounds %struct.serio, ptr %86, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i177) #12
  %state.i.i.i178 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 18
  %87 = ptrtoint ptr %state.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %state.i.i.i178, align 4
  %out_of_sync_cnt.i.i.i179 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 16
  %88 = ptrtoint ptr %out_of_sync_cnt.i.i.i179 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %out_of_sync_cnt.i.i.i179, align 4
  %pktcnt.i.i.i180 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 9
  %89 = ptrtoint ptr %pktcnt.i.i.i180 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %pktcnt.i.i.i180, align 1
  %flags.i.i.i181 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %flags.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %flags.i.i.i181, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i182 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 15
  %92 = ptrtoint ptr %last.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %last.i.i.i182, align 4
  %93 = ptrtoint ptr %ps2dev.i171 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ps2dev.i171, align 4
  %lock.i5.i.i183 = getelementptr inbounds %struct.serio, ptr %94, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i183) #12
  br label %if.end78

if.end78:                                         ; preds = %if.end.i184, %do.end.i176, %out.if.end78_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  ret i32 %retval1.0

land.lhs.true80.critedge:                         ; preds = %if.end63
  %pt_deactivate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 36
  %95 = ptrtoint ptr %pt_deactivate to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pt_deactivate, align 4
  %tobool81.not = icmp eq ptr %96, null
  br i1 %tobool81.not, label %land.lhs.true80.critedge.if.end84_crit_edge, label %if.then82

land.lhs.true80.critedge.if.end84_crit_edge:      ; preds = %land.lhs.true80.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then82:                                        ; preds = %land.lhs.true80.critedge
  call void @__sanitizer_cov_trace_pc() #14
  call void %96(ptr noundef nonnull %parent.0) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %land.lhs.true80.critedge.if.end84_crit_edge, %if.end63.thread.if.end84_crit_edge
  %call65203205 = phi i32 [ %call65, %if.then82 ], [ %call65, %land.lhs.true80.critedge.if.end84_crit_edge ], [ %call65201, %if.end63.thread.if.end84_crit_edge ]
  %tobool85.not = icmp eq ptr %input_dev.0, null
  br i1 %tobool85.not, label %if.end84.err_protocol_disconnect_crit_edge, label %if.then86

if.end84.err_protocol_disconnect_crit_edge:       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_protocol_disconnect

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_unregister_device(ptr noundef nonnull %input_dev.0) #12
  br label %err_protocol_disconnect

err_protocol_disconnect:                          ; preds = %if.then86, %if.end84.err_protocol_disconnect_crit_edge, %psmouse_initialize.exit.err_protocol_disconnect_crit_edge
  %input_dev.1 = phi ptr [ null, %if.then86 ], [ null, %if.end84.err_protocol_disconnect_crit_edge ], [ %call7, %psmouse_initialize.exit.err_protocol_disconnect_crit_edge ]
  %error.0 = phi i32 [ %call65203205, %if.then86 ], [ %call65203205, %if.end84.err_protocol_disconnect_crit_edge ], [ %call52, %psmouse_initialize.exit.err_protocol_disconnect_crit_edge ]
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %call7.i.i, i32 0, i32 32
  %97 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %disconnect, align 4
  %tobool88.not = icmp eq ptr %98, null
  br i1 %tobool88.not, label %err_protocol_disconnect.if.end91_crit_edge, label %if.then89

err_protocol_disconnect.if.end91_crit_edge:       ; preds = %err_protocol_disconnect
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then89:                                        ; preds = %err_protocol_disconnect
  call void @__sanitizer_cov_trace_pc() #14
  call void %98(ptr noundef nonnull %call7.i.i) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %err_protocol_disconnect.if.end91_crit_edge
  %99 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ps2dev, align 8
  %lock.i.i187 = getelementptr inbounds %struct.serio, ptr %100, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i187) #12
  %101 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %state.i.i, align 4
  %102 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %103 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %pktcnt.i.i, align 1
  %104 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %106 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %last.i.i, align 8
  %107 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ps2dev, align 8
  %lock.i5.i193 = getelementptr inbounds %struct.serio, ptr %108, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i193) #12
  br label %err_close_serio

err_close_serio:                                  ; preds = %if.end91, %psmouse_probe.exit.err_close_serio_crit_edge, %psmouse_probe.exit.thread197
  %input_dev.2 = phi ptr [ %input_dev.1, %if.end91 ], [ %call7, %psmouse_probe.exit.err_close_serio_crit_edge ], [ %call7, %psmouse_probe.exit.thread197 ]
  %error.1 = phi i32 [ %error.0, %if.end91 ], [ -19, %psmouse_probe.exit.err_close_serio_crit_edge ], [ -19, %psmouse_probe.exit.thread197 ]
  call void @serio_close(ptr noundef %serio) #12
  br label %err_clear_drvdata

err_clear_drvdata:                                ; preds = %err_close_serio, %if.end11.err_clear_drvdata_crit_edge
  %input_dev.3 = phi ptr [ %call7, %if.end11.err_clear_drvdata_crit_edge ], [ %input_dev.2, %err_close_serio ]
  %error.2 = phi i32 [ %call31, %if.end11.err_clear_drvdata_crit_edge ], [ %error.1, %err_close_serio ]
  %109 = ptrtoint ptr %driver_data.i.i155 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %driver_data.i.i155, align 4
  br label %err_free

err_free:                                         ; preds = %err_clear_drvdata, %lor.lhs.false.err_free_crit_edge, %if.end.err_free_crit_edge
  %input_dev.4 = phi ptr [ %input_dev.3, %err_clear_drvdata ], [ null, %lor.lhs.false.err_free_crit_edge ], [ %call7, %if.end.err_free_crit_edge ]
  %error.3 = phi i32 [ %error.2, %err_clear_drvdata ], [ -12, %lor.lhs.false.err_free_crit_edge ], [ -12, %if.end.err_free_crit_edge ]
  call void @input_free_device(ptr noundef %input_dev.4) #12
  call void @kfree(ptr noundef %call7.i.i) #12
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_reconnect(ptr nocapture noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__psmouse_reconnect(ptr noundef %serio, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_fast_reconnect(ptr nocapture noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__psmouse_reconnect(ptr noundef %serio, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_disconnect(ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @psmouse_attribute_group) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev.i, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last.i.i, align 4
  %10 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  %12 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @flush_workqueue(ptr noundef %12) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %parent1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %13 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent1, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp = icmp eq i8 %16, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %driver_data.i.i47 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18, i32 8
  %17 = ptrtoint ptr %driver_data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i47, align 4
  %ps2dev.i48 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i48, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %19 = ptrtoint ptr %ps2dev.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev.i48, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 18
  %21 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 16
  %22 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 9
  %23 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 15
  %26 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last.i.i.i, align 4
  %27 = ptrtoint ptr %ps2dev.i48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev.i48, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %18, %do.end.i ], [ %18, %if.end.i ]
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 32
  %29 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disconnect, align 4
  %tobool6.not = icmp eq ptr %30, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %30(ptr noundef %1) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %parent.0, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %land.lhs.true11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %pt_deactivate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 36
  %31 = ptrtoint ptr %pt_deactivate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pt_deactivate, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then13

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %32(ptr noundef nonnull %parent.0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %33 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ps2dev.i, align 4
  %lock.i.i50 = getelementptr inbounds %struct.serio, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i50) #12
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state.i.i, align 4
  %36 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %37 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %pktcnt.i.i, align 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last.i.i, align 4
  %41 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i56 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i56) #12
  tail call void @serio_close(ptr noundef %serio) #12
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev16 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev16, align 4
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_unregister_device(ptr noundef nonnull %45) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  br i1 %tobool10.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  %ps2dev.i58 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2
  %call.i59 = tail call i32 @ps2_command(ptr noundef %ps2dev.i58, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  %46 = ptrtoint ptr %ps2dev.i58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ps2dev.i58, align 4
  br i1 %tobool.not.i60, label %if.end.i71, label %do.end.i63

do.end.i63:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i61 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 18
  %phys.i62 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i61, ptr noundef nonnull @.str.2, ptr noundef %phys.i62) #15
  br label %if.end24

if.end.i71:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i64 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i64) #12
  %state.i.i.i65 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 18
  %48 = ptrtoint ptr %state.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %state.i.i.i65, align 4
  %out_of_sync_cnt.i.i.i66 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 16
  %49 = ptrtoint ptr %out_of_sync_cnt.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %out_of_sync_cnt.i.i.i66, align 4
  %pktcnt.i.i.i67 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 9
  %50 = ptrtoint ptr %pktcnt.i.i.i67 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %pktcnt.i.i.i67, align 1
  %flags.i.i.i68 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %flags.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flags.i.i.i68, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i69 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 15
  %53 = ptrtoint ptr %last.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %last.i.i.i69, align 4
  %54 = ptrtoint ptr %ps2dev.i58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ps2dev.i58, align 4
  %lock.i5.i.i70 = getelementptr inbounds %struct.serio, ptr %55, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i70) #12
  br label %if.end24

if.end24:                                         ; preds = %if.end.i71, %do.end.i63, %if.end20.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_cleanup(ptr nocapture noundef readonly %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %parent1 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp = icmp eq i8 %5, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %driver_data.i.i48 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i48, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %8 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 16
  %11 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 15
  %15 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last.i.i.i, align 4
  %16 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ], [ %7, %do.end.i ], [ %7, %if.end.i ]
  %ps2dev.i49 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ps2dev.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps2dev.i49, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last.i.i, align 4
  %26 = ptrtoint ptr %ps2dev.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps2dev.i49, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  %call6 = tail call i32 @ps2_command(ptr noundef %ps2dev.i49, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %ps2dev.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps2dev.i49, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  %phys = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef %phys) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 33
  %30 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cleanup, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %31(ptr noundef %1) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %call19 = tail call i32 @ps2_command(ptr noundef %ps2dev.i49, ptr noundef null, i32 noundef 246) #12
  %call21 = tail call i32 @ps2_command(ptr noundef %ps2dev.i49, ptr noundef null, i32 noundef 244) #12
  %tobool22.not = icmp eq ptr %parent.0, null
  br i1 %tobool22.not, label %if.end17.if.end29_crit_edge, label %if.then23

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %if.end17
  %pt_deactivate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 36
  %32 = ptrtoint ptr %pt_deactivate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pt_deactivate, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %if.then23.if.end27_crit_edge, label %if.then25

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %33(ptr noundef nonnull %parent.0) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23.if.end27_crit_edge
  %ps2dev.i50 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2
  %call.i51 = tail call i32 @ps2_command(ptr noundef %ps2dev.i50, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  %34 = ptrtoint ptr %ps2dev.i50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ps2dev.i50, align 4
  br i1 %tobool.not.i52, label %if.end.i63, label %do.end.i55

do.end.i55:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i53 = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 18
  %phys.i54 = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i53, ptr noundef nonnull @.str.2, ptr noundef %phys.i54) #15
  br label %if.end29

if.end.i63:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i56 = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i56) #12
  %state.i.i.i57 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 18
  %36 = ptrtoint ptr %state.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %state.i.i.i57, align 4
  %out_of_sync_cnt.i.i.i58 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 16
  %37 = ptrtoint ptr %out_of_sync_cnt.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %out_of_sync_cnt.i.i.i58, align 4
  %pktcnt.i.i.i59 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 9
  %38 = ptrtoint ptr %pktcnt.i.i.i59 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %pktcnt.i.i.i59, align 1
  %flags.i.i.i60 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %flags.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags.i.i.i60, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i61 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 15
  %41 = ptrtoint ptr %last.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last.i.i.i61, align 4
  %42 = ptrtoint ptr %ps2dev.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ps2dev.i50, align 4
  %lock.i5.i.i62 = getelementptr inbounds %struct.serio, ptr %43, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i62) #12
  br label %if.end29

if.end29:                                         ; preds = %if.end.i63, %do.end.i55, %if.end17.if.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_cmd_aborted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_ack(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_handle_byte(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %0 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol_handler, align 4
  %call = tail call i32 %1(ptr noundef %psmouse) #12
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 18
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %do.end, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end:                                           ; preds = %sw.bb
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %5 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %phys = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 20
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %9 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pktcnt, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef %8, ptr noundef %phys, i32 noundef %conv) #15
  %out_of_sync_cnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %11 = ptrtoint ptr %out_of_sync_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_of_sync_cnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %out_of_sync_cnt, align 4
  %resetafter = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 23
  %13 = ptrtoint ptr %resetafter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resetafter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %14)
  %cmp1 = icmp eq i32 %inc, %14
  br i1 %cmp1, label %if.then3, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 4
  %16 = ptrtoint ptr %out_of_sync_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %out_of_sync_cnt, align 4
  %17 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %pktcnt, align 1
  %flags.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %last.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 15
  %20 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last.i, align 4
  %21 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ps2dev, align 4
  %dev9 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev9, ptr noundef nonnull @.str.81) #15
  %23 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ps2dev, align 4
  tail call void @serio_reconnect(ptr noundef %24) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %pktcnt13 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %25 = ptrtoint ptr %pktcnt13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pktcnt13, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %pktcnt15 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %26 = ptrtoint ptr %pktcnt15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pktcnt15, align 1
  %out_of_sync_cnt16 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %27 = ptrtoint ptr %out_of_sync_cnt16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_of_sync_cnt16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %sw.bb14.cleanup_crit_edge, label %if.then17

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %out_of_sync_cnt16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %out_of_sync_cnt16, align 4
  %ps2dev22 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %30 = ptrtoint ptr %ps2dev22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps2dev22, align 4
  %dev24 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  %name25 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %32 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name25, align 4
  %phys26 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev24, ptr noundef nonnull @.str.85, ptr noundef %33, ptr noundef %phys26) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.bb14.cleanup_crit_edge, %if.end12, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ 0, %sw.bb14.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psmouse_resync(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  %ps2dev = getelementptr i8, ptr %work, i32 -164
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  %state = getelementptr i8, ptr %work, i32 144
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %parent2 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %id = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp3 = icmp eq i8 %7, 5
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %10 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end8

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 16
  %13 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 15
  %17 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last.i.i.i, align 4
  %18 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %do.end.i, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end8_crit_edge ], [ null, %if.end.if.end8_crit_edge ], [ %9, %do.end.i ], [ %9, %if.end.i ]
  %num_resyncs = getelementptr i8, ptr %work, i32 140
  %20 = ptrtoint ptr %num_resyncs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_resyncs, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %num_resyncs, align 4
  %call10 = tail call i32 @ps2_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext -11, i32 noundef 20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  %22 = ptrtoint ptr %num_resyncs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_resyncs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp14 = icmp ult i32 %23, 3
  br i1 %cmp14, label %if.then12.if.end43_crit_edge, label %lor.lhs.false

if.then12.if.end43_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false:                                    ; preds = %if.then12
  %acks_disable_command = getelementptr i8, ptr %work, i32 125
  %24 = ptrtoint ptr %acks_disable_command to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %acks_disable_command, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end43_crit_edge

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %acks_disable_command20 = getelementptr i8, ptr %work, i32 125
  %26 = ptrtoint ptr %acks_disable_command20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %acks_disable_command20, align 1
  br label %if.then23

if.then23:                                        ; preds = %if.else, %lor.lhs.false.if.then23_crit_edge
  %poll = getelementptr i8, ptr %work, i32 296
  %27 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poll, align 4
  %call24 = tail call i32 %28(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else27, label %if.then23.if.end43_crit_edge

if.then23.if.end43_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else27:                                        ; preds = %if.then23
  %29 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ps2dev, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %state, align 4
  %out_of_sync_cnt.i.i = getelementptr i8, ptr %work, i32 136
  %32 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr i8, ptr %work, i32 121
  %33 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr i8, ptr %work, i32 -16
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr i8, ptr %work, i32 132
  %36 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %last.i.i, align 4
  %37 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  %pktsize = getelementptr i8, ptr %work, i32 122
  %39 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp29154.not = icmp eq i8 %40, 0
  br i1 %cmp29154.not, label %if.else27.for.end.thread_crit_edge, label %for.body.lr.ph

if.else27.for.end.thread_crit_edge:               ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.else27
  %protocol_handler = getelementptr i8, ptr %work, i32 264
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %41 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pktcnt.i.i, align 1
  %inc31 = add i8 %42, 1
  store i8 %inc31, ptr %pktcnt.i.i, align 1
  %43 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %protocol_handler, align 4
  %call32 = tail call i32 %44(ptr noundef %add.ptr) #12
  %45 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call32, label %for.body.for.end.thread.loopexit_crit_edge [
    i32 1, label %for.inc
    i32 2, label %for.body.for.end.thread_crit_edge
  ]

for.body.for.end.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.for.end.thread.loopexit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.loopexit

for.inc:                                          ; preds = %for.body
  %inc37 = add nuw nsw i32 %i.0155, 1
  %46 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pktsize, align 2
  %conv28 = zext i8 %47 to i32
  %cmp29 = icmp ult i32 %inc37, %conv28
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.end.thread.loopexit_crit_edge

for.inc.for.end.thread.loopexit_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.thread.loopexit:                          ; preds = %for.inc.for.end.thread.loopexit_crit_edge, %for.body.for.end.thread.loopexit_crit_edge
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread.loopexit, %for.body.for.end.thread_crit_edge, %if.else27.for.end.thread_crit_edge
  %48 = phi i1 [ true, %if.else27.for.end.thread_crit_edge ], [ true, %for.end.thread.loopexit ], [ false, %for.body.for.end.thread_crit_edge ]
  %49 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ps2dev, align 4
  %lock.i.i112 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i112) #12
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %state, align 4
  %52 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %53 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %pktcnt.i.i, align 1
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %56 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last.i.i, align 4
  %57 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i118 = getelementptr inbounds %struct.serio, ptr %58, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i118) #12
  br label %if.end43

if.end43:                                         ; preds = %for.end.thread, %if.then23.if.end43_crit_edge, %lor.lhs.false.if.end43_crit_edge, %if.then12.if.end43_crit_edge
  %failed.2.off0 = phi i1 [ %48, %for.end.thread ], [ true, %if.then23.if.end43_crit_edge ], [ true, %if.then12.if.end43_crit_edge ], [ true, %lor.lhs.false.if.end43_crit_edge ]
  %call49 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end43.if.end62_crit_edge, label %if.end52

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52:                                         ; preds = %if.end43
  tail call void @msleep(i32 noundef 200) #12
  %call49.1 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %tobool50.not.1 = icmp eq i32 %call49.1, 0
  br i1 %tobool50.not.1, label %if.end52.if.end62_crit_edge, label %if.end52.1

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52.1:                                       ; preds = %if.end52
  tail call void @msleep(i32 noundef 200) #12
  %call49.2 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %tobool50.not.2 = icmp eq i32 %call49.2, 0
  br i1 %tobool50.not.2, label %if.end52.1.if.end62_crit_edge, label %if.end52.2

if.end52.1.if.end62_crit_edge:                    ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52.2:                                       ; preds = %if.end52.1
  tail call void @msleep(i32 noundef 200) #12
  %call49.3 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.3)
  %tobool50.not.3 = icmp eq i32 %call49.3, 0
  br i1 %tobool50.not.3, label %if.end52.2.if.end62_crit_edge, label %if.end52.3

if.end52.2.if.end62_crit_edge:                    ; preds = %if.end52.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52.3:                                       ; preds = %if.end52.2
  tail call void @msleep(i32 noundef 200) #12
  %call49.4 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.4)
  %tobool50.not.4 = icmp eq i32 %call49.4, 0
  br i1 %tobool50.not.4, label %if.end52.3.if.end62_crit_edge, label %if.end52.4

if.end52.3.if.end62_crit_edge:                    ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end52.4:                                       ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 200) #12
  %59 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 18
  %phys = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef %phys) #15
  br label %if.then64

if.end62:                                         ; preds = %if.end52.3.if.end62_crit_edge, %if.end52.2.if.end62_crit_edge, %if.end52.1.if.end62_crit_edge, %if.end52.if.end62_crit_edge, %if.end43.if.end62_crit_edge
  br i1 %failed.2.off0, label %if.end62.if.then64_crit_edge, label %if.else71

if.end62.if.then64_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

if.then64:                                        ; preds = %if.end62.if.then64_crit_edge, %if.end52.4
  %61 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ps2dev, align 4
  %lock.i.i120 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i120) #12
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %state, align 4
  %out_of_sync_cnt.i.i122 = getelementptr i8, ptr %work, i32 136
  %64 = ptrtoint ptr %out_of_sync_cnt.i.i122 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %out_of_sync_cnt.i.i122, align 4
  %pktcnt.i.i123 = getelementptr i8, ptr %work, i32 121
  %65 = ptrtoint ptr %pktcnt.i.i123 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %pktcnt.i.i123, align 1
  %flags.i.i124 = getelementptr i8, ptr %work, i32 -16
  %66 = ptrtoint ptr %flags.i.i124 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %flags.i.i124, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %last.i.i125 = getelementptr i8, ptr %work, i32 132
  %68 = ptrtoint ptr %last.i.i125 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %last.i.i125, align 4
  %69 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i126 = getelementptr inbounds %struct.serio, ptr %70, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i126) #12
  %71 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ps2dev, align 4
  %dev70 = getelementptr inbounds %struct.serio, ptr %72, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.94) #15
  tail call void @serio_reconnect(ptr noundef %1) #12
  br label %if.end72

if.else71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ps2dev, align 4
  %lock.i.i128 = getelementptr inbounds %struct.serio, ptr %74, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i128) #12
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %state, align 4
  %out_of_sync_cnt.i.i130 = getelementptr i8, ptr %work, i32 136
  %76 = ptrtoint ptr %out_of_sync_cnt.i.i130 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %out_of_sync_cnt.i.i130, align 4
  %pktcnt.i.i131 = getelementptr i8, ptr %work, i32 121
  %77 = ptrtoint ptr %pktcnt.i.i131 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %pktcnt.i.i131, align 1
  %flags.i.i132 = getelementptr i8, ptr %work, i32 -16
  %78 = ptrtoint ptr %flags.i.i132 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %flags.i.i132, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %last.i.i133 = getelementptr i8, ptr %work, i32 132
  %80 = ptrtoint ptr %last.i.i133 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %last.i.i133, align 4
  %81 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ps2dev, align 4
  %lock.i5.i134 = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i134) #12
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then64
  %tobool73.not = icmp eq ptr %parent.0, null
  br i1 %tobool73.not, label %if.end72.out_crit_edge, label %if.then74

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then74:                                        ; preds = %if.end72
  %ps2dev.i135 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2
  %call.i136 = tail call i32 @ps2_command(ptr noundef %ps2dev.i135, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  %83 = ptrtoint ptr %ps2dev.i135 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ps2dev.i135, align 4
  br i1 %tobool.not.i137, label %if.end.i148, label %do.end.i140

do.end.i140:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i138 = getelementptr inbounds %struct.serio, ptr %84, i32 0, i32 18
  %phys.i139 = getelementptr inbounds %struct.serio, ptr %84, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i138, ptr noundef nonnull @.str.2, ptr noundef %phys.i139) #15
  br label %out

if.end.i148:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i141 = getelementptr inbounds %struct.serio, ptr %84, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i141) #12
  %state.i.i.i142 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 18
  %85 = ptrtoint ptr %state.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %state.i.i.i142, align 4
  %out_of_sync_cnt.i.i.i143 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 16
  %86 = ptrtoint ptr %out_of_sync_cnt.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %out_of_sync_cnt.i.i.i143, align 4
  %pktcnt.i.i.i144 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 9
  %87 = ptrtoint ptr %pktcnt.i.i.i144 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %pktcnt.i.i.i144, align 1
  %flags.i.i.i145 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2, i32 3
  %88 = ptrtoint ptr %flags.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %flags.i.i.i145, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i146 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 15
  %90 = ptrtoint ptr %last.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %last.i.i.i146, align 4
  %91 = ptrtoint ptr %ps2dev.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ps2dev.i135, align 4
  %lock.i5.i.i147 = getelementptr inbounds %struct.serio, ptr %92, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i147) #12
  br label %out

out:                                              ; preds = %if.end.i148, %do.end.i140, %if.end72.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_show_int_attr(ptr nocapture noundef readonly %psmouse, ptr noundef %offset, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  %add.ptr = getelementptr i8, ptr %psmouse, i32 %0
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.99, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_rate(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !311
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %1 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_rate, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void %2(ptr noundef %psmouse, i32 noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_resolution(ptr noundef %psmouse, ptr nocapture noundef readnone %data, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !311
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %set_resolution = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %1 = ptrtoint ptr %set_resolution to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_resolution, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void %2(ptr noundef %psmouse, i32 noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psmouse_set_int_attr(ptr nocapture noundef writeonly %psmouse, ptr noundef %offset, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !311
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %offset to i32
  %add.ptr = getelementptr i8, ptr %psmouse, i32 %1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__psmouse_reconnect(ptr nocapture noundef readonly %serio, i1 noundef zeroext %fast_reconnect) unnamed_addr #0 align 64 {
entry:
  %param.i85 = alloca [2 x i8], align 1
  %param.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @psmouse_mutex, i32 noundef 0) #12
  br i1 %fast_reconnect, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %fast_reconnect1 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %fast_reconnect1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fast_reconnect1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.out_unlock_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %reconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reconnect, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge
  %reconnect_handler.0 = phi ptr [ %3, %if.then.if.end4_crit_edge ], [ %5, %if.else ]
  %parent5 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %6 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %id = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp = icmp eq i8 %9, 5
  br i1 %cmp, label %if.then9, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  %driver_data.i.i79 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %driver_data.i.i79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i79, align 4
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 245) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %12 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  %phys.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %phys.i, i32 noundef %call.i) #15
  br label %if.end13

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #12
  %state.i.i.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 18
  %14 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state.i.i.i, align 4
  %out_of_sync_cnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 16
  %15 = ptrtoint ptr %out_of_sync_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %out_of_sync_cnt.i.i.i, align 4
  %pktcnt.i.i.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %pktcnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pktcnt.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 15
  %19 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last.i.i.i, align 4
  %20 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps2dev.i, align 4
  %lock.i5.i.i = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %do.end.i, %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %parent.0 = phi ptr [ null, %land.lhs.true.if.end13_crit_edge ], [ null, %if.end4.if.end13_crit_edge ], [ %11, %do.end.i ], [ %11, %if.end.i ]
  %ps2dev.i80 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps2dev.i80, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %state.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state.i.i, align 4
  %out_of_sync_cnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %pktcnt.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pktcnt.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last.i.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last.i.i, align 4
  %30 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps2dev.i80, align 4
  %lock.i5.i = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i) #12
  %tobool14.not = icmp eq ptr %reconnect_handler.0, null
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i32 %reconnect_handler.0(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end33_crit_edge, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then15.if.end33_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.else20:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #12
  %32 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %param.i, align 1, !annotation !311
  %33 = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1, !annotation !311
  %call.i82 = call i32 @ps2_command(ptr noundef %ps2dev.i80, ptr noundef nonnull %param.i, i32 noundef 767) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i85) #12
  %35 = getelementptr inbounds [2 x i8], ptr %param.i85, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %35, align 1, !annotation !311
  %37 = ptrtoint ptr %param.i85 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -91, ptr %param.i85, align 1
  %call.i86 = call i32 @ps2_command(ptr noundef %ps2dev.i80, ptr noundef nonnull %param.i85, i32 noundef 754) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %if.end.i88, label %psmouse_probe.exit

if.end.i88:                                       ; preds = %if.else20
  %38 = ptrtoint ptr %param.i85 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %param.i85, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %39, label %psmouse_probe.exit.thread136 [
    i8 0, label %if.end.i88.if.end19.i_crit_edge
    i8 3, label %if.end.i88.if.end19.i_crit_edge139
    i8 4, label %if.end.i88.if.end19.i_crit_edge140
    i8 -1, label %if.end.i88.if.end19.i_crit_edge141
  ]

if.end.i88.if.end19.i_crit_edge141:               ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i88.if.end19.i_crit_edge140:               ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i88.if.end19.i_crit_edge139:               ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i88.if.end19.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

psmouse_probe.exit.thread136:                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i85) #12
  br label %out

if.end19.i:                                       ; preds = %if.end.i88.if.end19.i_crit_edge, %if.end.i88.if.end19.i_crit_edge139, %if.end.i88.if.end19.i_crit_edge140, %if.end.i88.if.end19.i_crit_edge141
  %call20.i = call i32 @ps2_command(ptr noundef %ps2dev.i80, ptr noundef null, i32 noundef 246) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.psmouse_probe.exit.thread_crit_edge, label %do.end.i91

if.end19.i.psmouse_probe.exit.thread_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %psmouse_probe.exit.thread

do.end.i91:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps2dev.i80, align 4
  %dev.i89 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  %phys.i90 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i89, ptr noundef nonnull @.str.96, ptr noundef %phys.i90, i32 noundef %call20.i) #15
  br label %psmouse_probe.exit.thread

psmouse_probe.exit.thread:                        ; preds = %do.end.i91, %if.end19.i.psmouse_probe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i85) #12
  br label %if.end26

psmouse_probe.exit:                               ; preds = %if.else20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i85) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp23 = icmp slt i32 %call.i86, 0
  br i1 %cmp23, label %psmouse_probe.exit.out_crit_edge, label %psmouse_probe.exit.if.end26_crit_edge

psmouse_probe.exit.if.end26_crit_edge:            ; preds = %psmouse_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

psmouse_probe.exit.out_crit_edge:                 ; preds = %psmouse_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end26:                                         ; preds = %psmouse_probe.exit.if.end26_crit_edge, %psmouse_probe.exit.thread
  %43 = load i32, ptr @psmouse_max_proto, align 4
  %call27 = call fastcc i32 @psmouse_extensions(ptr noundef %1, i32 noundef %43, i1 noundef zeroext false)
  %protocol = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %protocol, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call27)
  %cmp29.not = icmp eq i32 %47, %call27
  br i1 %cmp29.not, label %if.end26.if.end33_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %if.end26.if.end33_crit_edge, %if.then15.if.end33_crit_edge
  %protocol34 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %protocol34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %protocol34, align 4
  %smbus_companion = getelementptr inbounds %struct.psmouse_protocol, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %smbus_companion to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %smbus_companion, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool35.not = icmp eq i8 %51, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  %52 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ps2dev.i80, align 4
  %lock.i.i94 = getelementptr inbounds %struct.serio, ptr %53, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i94) #12
  %54 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %state.i.i, align 4
  %55 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %56 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %pktcnt.i.i, align 1
  %57 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %59 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %last.i.i, align 4
  %60 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ps2dev.i80, align 4
  %lock.i5.i100 = getelementptr inbounds %struct.serio, ptr %61, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i100) #12
  %62 = load i32, ptr @psmouse_max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.not.i101 = icmp eq i32 %62, 1
  br i1 %cmp.not.i101, label %if.then36.if.end37_crit_edge, label %if.then.i

if.then36.if.end37_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %set_rate.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 27
  %63 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_rate.i, align 4
  %rate.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 21
  %65 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rate.i, align 4
  call void %64(ptr noundef %1, i32 noundef %66) #12
  %set_resolution.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 28
  %67 = ptrtoint ptr %set_resolution.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_resolution.i, align 4
  %resolution.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %resolution.i, align 4
  call void %68(ptr noundef %1, i32 noundef %70) #12
  %set_scale.i = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 29
  %71 = ptrtoint ptr %set_scale.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_scale.i, align 4
  call void %72(ptr noundef %1, i32 noundef 0) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %if.then36.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %parent.0, null
  br i1 %tobool38.not, label %if.end37.if.end43_crit_edge, label %land.lhs.true39

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true39:                                  ; preds = %if.end37
  %pt_activate = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 35
  %73 = ptrtoint ptr %pt_activate to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pt_activate, align 4
  %tobool40.not = icmp eq ptr %74, null
  br i1 %tobool40.not, label %land.lhs.true39.if.end43_crit_edge, label %if.then41

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  call void %74(ptr noundef nonnull %parent.0) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true39.if.end43_crit_edge, %if.end37.if.end43_crit_edge
  %75 = ptrtoint ptr %protocol34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %protocol34, align 4
  %smbus_companion45 = getelementptr inbounds %struct.psmouse_protocol, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %smbus_companion45 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %smbus_companion45, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool46.not = icmp eq i8 %78, 0
  br i1 %tobool46.not, label %if.then47, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then47:                                        ; preds = %if.end43
  %call.i104 = call i32 @ps2_command(ptr noundef %ps2dev.i80, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  %79 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ps2dev.i80, align 4
  br i1 %tobool.not.i105, label %if.end.i116, label %do.end.i108

do.end.i108:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i106 = getelementptr inbounds %struct.serio, ptr %80, i32 0, i32 18
  %phys.i107 = getelementptr inbounds %struct.serio, ptr %80, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i106, ptr noundef nonnull @.str.2, ptr noundef %phys.i107) #15
  br label %out

if.end.i116:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i109 = getelementptr inbounds %struct.serio, ptr %80, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i109) #12
  %81 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %state.i.i, align 4
  %82 = ptrtoint ptr %out_of_sync_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %out_of_sync_cnt.i.i, align 4
  %83 = ptrtoint ptr %pktcnt.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %pktcnt.i.i, align 1
  %84 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %86 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %last.i.i, align 4
  %87 = ptrtoint ptr %ps2dev.i80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ps2dev.i80, align 4
  %lock.i5.i.i115 = getelementptr inbounds %struct.serio, ptr %88, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i115) #12
  br label %out

out:                                              ; preds = %if.end.i116, %do.end.i108, %if.end43.out_crit_edge, %if.end26.out_crit_edge, %psmouse_probe.exit.out_crit_edge, %psmouse_probe.exit.thread136, %if.then15.out_crit_edge
  %rc.0 = phi i32 [ -1, %if.then15.out_crit_edge ], [ -1, %psmouse_probe.exit.out_crit_edge ], [ -1, %if.end26.out_crit_edge ], [ 0, %if.end43.out_crit_edge ], [ -1, %psmouse_probe.exit.thread136 ], [ 0, %do.end.i108 ], [ 0, %if.end.i116 ]
  %tobool50.not = icmp eq ptr %parent.0, null
  br i1 %tobool50.not, label %out.out_unlock_crit_edge, label %if.then51

out.out_unlock_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then51:                                        ; preds = %out
  %ps2dev.i118 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2
  %call.i119 = call i32 @ps2_command(ptr noundef %ps2dev.i118, ptr noundef null, i32 noundef 244) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  %89 = ptrtoint ptr %ps2dev.i118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ps2dev.i118, align 4
  br i1 %tobool.not.i120, label %if.end.i131, label %do.end.i123

do.end.i123:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i121 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 18
  %phys.i122 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i121, ptr noundef nonnull @.str.2, ptr noundef %phys.i122) #15
  br label %out_unlock

if.end.i131:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i.i.i124 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i124) #12
  %state.i.i.i125 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 18
  %91 = ptrtoint ptr %state.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %state.i.i.i125, align 4
  %out_of_sync_cnt.i.i.i126 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 16
  %92 = ptrtoint ptr %out_of_sync_cnt.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %out_of_sync_cnt.i.i.i126, align 4
  %pktcnt.i.i.i127 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 9
  %93 = ptrtoint ptr %pktcnt.i.i.i127 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %pktcnt.i.i.i127, align 1
  %flags.i.i.i128 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 2, i32 3
  %94 = ptrtoint ptr %flags.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %flags.i.i.i128, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %last.i.i.i129 = getelementptr inbounds %struct.psmouse, ptr %parent.0, i32 0, i32 15
  %96 = ptrtoint ptr %last.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %last.i.i.i129, align 4
  %97 = ptrtoint ptr %ps2dev.i118 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ps2dev.i118, align 4
  %lock.i5.i.i130 = getelementptr inbounds %struct.serio, ptr %98, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i5.i.i130) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i131, %do.end.i123, %out.out_unlock_crit_edge, %if.then.out_unlock_crit_edge
  %rc.1 = phi i32 [ %rc.0, %out.out_unlock_crit_edge ], [ -2, %if.then.out_unlock_crit_edge ], [ %rc.0, %do.end.i123 ], [ %rc.0, %if.end.i131 ]
  call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #12
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synaptics_module_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_module_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !201, !202, !204, !206, !208, !209, !210, !212, !214, !216, !218, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !275, !277, !278, !280, !282, !283, !285, !286, !288, !289, !291, !292, !293, !294, !296, !298, !299, !300}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/psmouse-base.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/psmouse-base.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/psmouse-base.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_proto, !8, !"__param_proto", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/psmouse-base.c", i32 54, i32 1}
!9 = !{ptr @__UNIQUE_ID_prototype231, !8, !"__UNIQUE_ID_prototype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_proto232, !11, !"__UNIQUE_ID_proto232", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/psmouse-base.c", i32 55, i32 1}
!12 = !{ptr @__param_resolution, !13, !"__param_resolution", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/psmouse-base.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_resolutiontype233, !13, !"__UNIQUE_ID_resolutiontype233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_resolution234, !16, !"__UNIQUE_ID_resolution234", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/psmouse-base.c", i32 59, i32 1}
!17 = !{ptr @__param_rate, !18, !"__param_rate", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/psmouse-base.c", i32 62, i32 1}
!19 = !{ptr @__UNIQUE_ID_ratetype235, !18, !"__UNIQUE_ID_ratetype235", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_rate236, !21, !"__UNIQUE_ID_rate236", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/psmouse-base.c", i32 63, i32 1}
!22 = !{ptr @__param_smartscroll, !23, !"__param_smartscroll", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/psmouse-base.c", i32 66, i32 1}
!24 = !{ptr @__UNIQUE_ID_smartscrolltype237, !23, !"__UNIQUE_ID_smartscrolltype237", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_smartscroll238, !26, !"__UNIQUE_ID_smartscroll238", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/psmouse-base.c", i32 67, i32 1}
!27 = !{ptr @__param_a4tech_workaround, !28, !"__param_a4tech_workaround", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/psmouse-base.c", i32 70, i32 1}
!29 = !{ptr @__UNIQUE_ID_a4tech_workaroundtype239, !28, !"__UNIQUE_ID_a4tech_workaroundtype239", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_a4tech_workaround240, !31, !"__UNIQUE_ID_a4tech_workaround240", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/psmouse-base.c", i32 71, i32 1}
!32 = !{ptr @__param_resetafter, !33, !"__param_resetafter", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/psmouse-base.c", i32 74, i32 1}
!34 = !{ptr @__UNIQUE_ID_resetaftertype241, !33, !"__UNIQUE_ID_resetaftertype241", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_resetafter242, !36, !"__UNIQUE_ID_resetafter242", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/psmouse-base.c", i32 75, i32 1}
!37 = !{ptr @__param_resync_time, !38, !"__param_resync_time", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/psmouse-base.c", i32 78, i32 1}
!39 = !{ptr @__UNIQUE_ID_resync_timetype243, !38, !"__UNIQUE_ID_resync_timetype243", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_resync_time244, !41, !"__UNIQUE_ID_resync_time244", i1 false, i1 false}
!41 = !{!"../drivers/input/mouse/psmouse-base.c", i32 79, i32 1}
!42 = !{ptr @psmouse_set_resolution.params, !43, !"params", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/psmouse-base.c", i32 455, i32 18}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/mouse/psmouse-base.c", i32 521, i32 34}
!46 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/mouse/psmouse-base.c", i32 531, i32 34}
!48 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1303, i32 3}
!50 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @psmouse_activate._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @psmouse_activate._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1322, i32 3}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @psmouse_deactivate._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @psmouse_deactivate._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__initcall__kmod_psmouse__245_2087_psmouse_init6, !62, !"__initcall__kmod_psmouse__245_2087_psmouse_init6", i1 false, i1 false}
!62 = !{!"../drivers/input/mouse/psmouse-base.c", i32 2087, i32 1}
!63 = !{ptr @__exitcall_psmouse_exit, !64, !"__exitcall_psmouse_exit", i1 false, i1 false}
!64 = !{!"../drivers/input/mouse/psmouse-base.c", i32 2088, i32 1}
!65 = !{ptr @psmouse_a4tech_2wheels, !66, !"psmouse_a4tech_2wheels", i1 false, i1 false}
!66 = !{!"../drivers/input/mouse/psmouse-base.c", i32 69, i32 13}
!67 = !{ptr @psmouse_resync_time, !68, !"psmouse_resync_time", i1 false, i1 false}
!68 = !{!"../drivers/input/mouse/psmouse-base.c", i32 77, i32 21}
!69 = !{ptr @kpsmoused_wq, !70, !"kpsmoused_wq", i1 false, i1 false}
!70 = !{!"../drivers/input/mouse/psmouse-base.c", i32 119, i32 33}
!71 = !{ptr @__param_str_proto, !8, !"__param_str_proto", i1 false, i1 false}
!72 = !{ptr @param_ops_proto_abbrev, !73, !"param_ops_proto_abbrev", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/psmouse-base.c", i32 49, i32 38}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/mouse/psmouse-base.c", i32 728, i32 12}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/psmouse-base.c", i32 729, i32 13}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/mouse/psmouse-base.c", i32 738, i32 12}
!80 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/mouse/psmouse-base.c", i32 739, i32 13}
!82 = !{ptr @.str.13, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/mouse/psmouse-base.c", i32 745, i32 12}
!84 = !{ptr @.str.14, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/psmouse-base.c", i32 746, i32 13}
!86 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mouse/psmouse-base.c", i32 752, i32 12}
!88 = !{ptr @.str.16, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/mouse/psmouse-base.c", i32 753, i32 13}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/psmouse-base.c", i32 760, i32 12}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/mouse/psmouse-base.c", i32 761, i32 13}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/mouse/psmouse-base.c", i32 766, i32 12}
!96 = !{ptr @.str.20, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/mouse/psmouse-base.c", i32 767, i32 13}
!98 = !{ptr @.str.21, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/mouse/psmouse-base.c", i32 775, i32 12}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/mouse/psmouse-base.c", i32 776, i32 13}
!102 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/mouse/psmouse-base.c", i32 785, i32 12}
!104 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/mouse/psmouse-base.c", i32 786, i32 13}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/mouse/psmouse-base.c", i32 792, i32 12}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/mouse/psmouse-base.c", i32 793, i32 13}
!110 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/mouse/psmouse-base.c", i32 801, i32 12}
!112 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/mouse/psmouse-base.c", i32 802, i32 13}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/mouse/psmouse-base.c", i32 811, i32 12}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/mouse/psmouse-base.c", i32 812, i32 13}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/mouse/psmouse-base.c", i32 829, i32 12}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/mouse/psmouse-base.c", i32 830, i32 13}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/mouse/psmouse-base.c", i32 838, i32 12}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/mouse/psmouse-base.c", i32 839, i32 13}
!126 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/mouse/psmouse-base.c", i32 854, i32 12}
!128 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/mouse/psmouse-base.c", i32 855, i32 13}
!130 = !{ptr @.str.37, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/mouse/psmouse-base.c", i32 863, i32 12}
!132 = !{ptr @.str.38, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/mouse/psmouse-base.c", i32 864, i32 13}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/mouse/psmouse-base.c", i32 873, i32 12}
!136 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/mouse/psmouse-base.c", i32 874, i32 13}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/mouse/psmouse-base.c", i32 881, i32 12}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/mouse/psmouse-base.c", i32 882, i32 13}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/mouse/psmouse-base.c", i32 888, i32 12}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/mouse/psmouse-base.c", i32 889, i32 13}
!146 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/mouse/psmouse-base.c", i32 906, i32 12}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/mouse/psmouse-base.c", i32 907, i32 13}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/mouse/psmouse-base.c", i32 914, i32 12}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/mouse/psmouse-base.c", i32 915, i32 13}
!154 = !{ptr @psmouse_protocols, !155, !"psmouse_protocols", i1 false, i1 false}
!155 = !{!"../drivers/input/mouse/psmouse-base.c", i32 725, i32 38}
!156 = !{ptr @.str.49, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/mouse/psmouse-base.c", i32 694, i32 22}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/mouse/psmouse-base.c", i32 696, i32 20}
!160 = distinct !{null, !161, !"seq", i1 false, i1 false}
!161 = !{!"../drivers/input/mouse/psmouse-base.c", i32 660, i32 18}
!162 = !{ptr @.str.51, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/input/mouse/psmouse-base.c", i32 680, i32 21}
!164 = !{ptr @.str.52, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/mouse/psmouse-base.c", i32 681, i32 19}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/mouse/psmouse-base.c", i32 566, i32 21}
!168 = !{ptr @.str.54, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/mouse/psmouse-base.c", i32 600, i32 20}
!170 = !{ptr @.str.55, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/mouse/psmouse-base.c", i32 646, i32 20}
!172 = !{ptr @.str.56, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/mouse/psmouse-base.c", i32 715, i32 21}
!174 = !{ptr @.str.57, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/input/mouse/psmouse-base.c", i32 716, i32 19}
!176 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/mouse/psmouse-base.c", i32 2045, i32 25}
!178 = !{ptr @psmouse_max_proto, !179, !"psmouse_max_proto", i1 false, i1 false}
!179 = !{!"../drivers/input/mouse/psmouse-base.c", i32 46, i32 21}
!180 = !{ptr @__param_str_resolution, !13, !"__param_str_resolution", i1 false, i1 false}
!181 = !{ptr @psmouse_resolution, !182, !"psmouse_resolution", i1 false, i1 false}
!182 = !{!"../drivers/input/mouse/psmouse-base.c", i32 57, i32 21}
!183 = !{ptr @__param_str_rate, !18, !"__param_str_rate", i1 false, i1 false}
!184 = !{ptr @psmouse_rate, !185, !"psmouse_rate", i1 false, i1 false}
!185 = !{!"../drivers/input/mouse/psmouse-base.c", i32 61, i32 21}
!186 = !{ptr @__param_str_smartscroll, !23, !"__param_str_smartscroll", i1 false, i1 false}
!187 = !{ptr @psmouse_smartscroll, !188, !"psmouse_smartscroll", i1 false, i1 false}
!188 = !{!"../drivers/input/mouse/psmouse-base.c", i32 65, i32 13}
!189 = !{ptr @__param_str_a4tech_workaround, !28, !"__param_str_a4tech_workaround", i1 false, i1 false}
!190 = !{ptr @__param_str_resetafter, !33, !"__param_str_resetafter", i1 false, i1 false}
!191 = !{ptr @psmouse_resetafter, !192, !"psmouse_resetafter", i1 false, i1 false}
!192 = !{!"../drivers/input/mouse/psmouse-base.c", i32 73, i32 21}
!193 = !{ptr @__param_str_resync_time, !38, !"__param_str_resync_time", i1 false, i1 false}
!194 = !{ptr @.str.59, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/input/mouse/psmouse-base.c", i32 81, i32 1}
!196 = !{ptr @psmouse_attr_protocol, !195, !"psmouse_attr_protocol", i1 false, i1 false}
!197 = !{ptr @.str.60, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1920, i32 4}
!199 = !{ptr @.str.61, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @psmouse_attr_set_protocol._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @psmouse_attr_set_protocol._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1565, i32 55}
!204 = !{ptr @psmouse_set_rate.rates, !205, !"rates", i1 false, i1 false}
!205 = !{!"../drivers/input/mouse/psmouse-base.c", i32 471, i32 18}
!206 = !{ptr @.str.63, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/mouse/psmouse-base.c", i32 117, i32 8}
!208 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @psmouse_mutex, !207, !"psmouse_mutex", i1 false, i1 false}
!210 = !{ptr @.str.65, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1796, i32 17}
!212 = !{ptr @.str.66, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1794, i32 11}
!214 = !{ptr @psmouse_drv, !215, !"psmouse_drv", i1 false, i1 false}
!215 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1792, i32 28}
!216 = !{ptr @psmouse_serio_ids, !217, !"psmouse_serio_ids", i1 false, i1 false}
!217 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1774, i32 31}
!218 = !{ptr @.str.67, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/mouse/psmouse-base.c", i32 351, i32 4}
!220 = !{ptr @.str.68, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @psmouse_interrupt._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @psmouse_interrupt._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.69, !219, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.70, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.71, !219, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.73, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/mouse/psmouse-base.c", i32 379, i32 3}
!228 = !{ptr @.str.74, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @psmouse_interrupt._entry.72, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @psmouse_interrupt._entry_ptr.75, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/input/mouse/psmouse-base.c", i32 326, i32 3}
!233 = !{ptr @.str.77, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @psmouse_handle_oob_data._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @psmouse_handle_oob_data._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/input/mouse/psmouse-base.c", i32 279, i32 4}
!238 = !{ptr @.str.79, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @psmouse_handle_byte._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @psmouse_handle_byte._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.81, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/input/mouse/psmouse-base.c", i32 285, i32 5}
!243 = !{ptr @.str.82, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @psmouse_handle_byte._entry.80, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @psmouse_handle_byte._entry_ptr.83, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.85, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/input/mouse/psmouse-base.c", i32 298, i32 4}
!248 = !{ptr @psmouse_handle_byte._entry.84, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @psmouse_handle_byte._entry_ptr.86, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @psmouse_connect.__key, !251, !"__key", i1 false, i1 false}
!251 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1605, i32 2}
!252 = !{ptr @.str.87, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @psmouse_connect.__key.88, !251, !"__key", i1 false, i1 false}
!254 = !{ptr @.str.89, !251, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.90, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1607, i32 49}
!257 = !{ptr @.str.91, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1409, i32 3}
!259 = !{ptr @.str.92, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @psmouse_resync._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @psmouse_resync._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.94, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1416, i32 3}
!264 = !{ptr @psmouse_resync._entry.93, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @psmouse_resync._entry_ptr.95, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.96, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1276, i32 3}
!268 = !{ptr @.str.97, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @psmouse_probe._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @psmouse_probe._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @psmouse_attribute_group, !272, !"psmouse_attribute_group", i1 false, i1 false}
!272 = !{!"../drivers/input/mouse/psmouse-base.c", i32 106, i32 37}
!273 = !{ptr @psmouse_attributes, !274, !"psmouse_attributes", i1 false, i1 false}
!274 = !{!"../drivers/input/mouse/psmouse-base.c", i32 97, i32 26}
!275 = !{ptr @.str.98, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/mouse/psmouse-base.c", i32 84, i32 1}
!277 = !{ptr @psmouse_attr_rate, !276, !"psmouse_attr_rate", i1 false, i1 false}
!278 = !{ptr @.str.99, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1875, i32 22}
!280 = !{ptr @.str.100, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/input/mouse/psmouse-base.c", i32 87, i32 1}
!282 = !{ptr @psmouse_attr_resolution, !281, !"psmouse_attr_resolution", i1 false, i1 false}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/input/mouse/psmouse-base.c", i32 90, i32 1}
!285 = !{ptr @psmouse_attr_resetafter, !284, !"psmouse_attr_resetafter", i1 false, i1 false}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/input/mouse/psmouse-base.c", i32 93, i32 1}
!288 = !{ptr @psmouse_attr_resync_time, !287, !"psmouse_attr_resync_time", i1 false, i1 false}
!289 = !{ptr @.str.103, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/mouse/psmouse-base.c", i32 1449, i32 3}
!291 = !{ptr @.str.104, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @psmouse_cleanup._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @psmouse_cleanup._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.105, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/input/mouse/psmouse-base.c", i32 2060, i32 17}
!296 = !{ptr @.str.106, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/input/mouse/psmouse-base.c", i32 2062, i32 3}
!298 = !{ptr @.str.107, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @psmouse_init._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @psmouse_init._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{i8 0, i8 2}
!311 = !{!"auto-init"}
!312 = !{!"branch_weights", i32 2000, i32 1}
!313 = !{!"branch_weights", i32 1, i32 2000}
