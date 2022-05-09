; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/vs6624.c_pt.bc'
source_filename = "../drivers/media/i2c/vs6624.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vs6624_format = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.vs6624 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.v4l2_fract, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_vs6624__292_852_vs6624_driver_init6 = internal global ptr @vs6624_driver_init, section ".initcall6.init", align 4
@vs6624_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @vs6624_probe, ptr @vs6624_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vs6624_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vs6624_driver_exit = internal global ptr @vs6624_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [40 x i8] c"vs6624.description=VS6624 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"vs6624.author=Scott Jiang <Scott.Jiang.Linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"vs6624.file=drivers/media/i2c/vs6624\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"vs6624.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vs6624\00", [25 x i8] zeroinitializer }, align 32
@vs6624_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vs6624\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VS6624 Chip Enable\00", [45 x i8] zeroinitializer }, align 32
@vs6624_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: failed to request GPIO %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vs6624_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/vs6624.c\00", [37 x i8] zeroinitializer }, align 32
@vs6624_probe._entry_ptr = internal global ptr @vs6624_probe._entry, section ".printk_index", align 4
@vs6624_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @vs6624_core_ops, ptr null, ptr null, ptr @vs6624_video_ops, ptr null, ptr null, ptr null, ptr @vs6624_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vs6624_p1 = internal constant { [646 x i16], [340 x i8] } { [646 x i16] [i16 -32508, i16 3, i16 -32507, i16 1, i16 -14080, i16 3, i16 -14076, i16 71, i16 -14075, i16 16, i16 -14074, i16 128, i16 -14073, i16 58, i16 -28614, i16 2, i16 -28613, i16 71, i16 -28612, i16 21, i16 -14072, i16 49, i16 -14071, i16 220, i16 -14070, i16 128, i16 -14069, i16 68, i16 -28604, i16 2, i16 -28603, i16 49, i16 -28602, i16 226, i16 -14068, i16 7, i16 -14067, i16 224, i16 -14066, i16 128, i16 -14065, i16 71, i16 -28601, i16 144, i16 -28600, i16 131, i16 -28599, i16 129, i16 -28598, i16 224, i16 -28597, i16 96, i16 -28596, i16 8, i16 -28595, i16 144, i16 -28594, i16 192, i16 -28593, i16 67, i16 -28592, i16 116, i16 -28591, i16 1, i16 -28590, i16 240, i16 -28589, i16 128, i16 -28588, i16 5, i16 -28587, i16 228, i16 -28586, i16 144, i16 -28585, i16 192, i16 -28584, i16 67, i16 -28583, i16 240, i16 -28582, i16 2, i16 -28581, i16 7, i16 -28580, i16 236, i16 -14064, i16 93, i16 -14063, i16 202, i16 -14062, i16 128, i16 -14061, i16 93, i16 -28579, i16 163, i16 -28578, i16 4, i16 -28577, i16 240, i16 -28576, i16 163, i16 -28575, i16 4, i16 -28574, i16 240, i16 -28573, i16 34, i16 -14060, i16 114, i16 -14059, i16 146, i16 -14058, i16 128, i16 -14057, i16 100, i16 -28572, i16 116, i16 -28571, i16 1, i16 -28570, i16 2, i16 -28569, i16 114, i16 -28568, i16 149, i16 -14056, i16 71, i16 -14055, i16 242, i16 -14054, i16 129, i16 -14053, i16 105, i16 -28311, i16 116, i16 -28310, i16 2, i16 -28309, i16 240, i16 -28308, i16 236, i16 -28307, i16 180, i16 -28306, i16 16, i16 -28305, i16 10, i16 -28304, i16 144, i16 -28303, i16 128, i16 -28302, i16 22, i16 -28301, i16 224, i16 -28300, i16 112, i16 -28299, i16 4, i16 -28298, i16 144, i16 -28297, i16 211, i16 -28296, i16 196, i16 -28295, i16 240, i16 -28294, i16 34, i16 -14052, i16 10, i16 -14051, i16 190, i16 -14050, i16 128, i16 -14049, i16 115, i16 -28557, i16 252, i16 -28556, i16 163, i16 -28555, i16 224, i16 -28554, i16 245, i16 -28553, i16 130, i16 -28552, i16 140, i16 -28551, i16 131, i16 -28550, i16 163, i16 -28549, i16 163, i16 -28548, i16 224, i16 -28547, i16 252, i16 -28546, i16 163, i16 -28545, i16 224, i16 -28544, i16 195, i16 -28543, i16 159, i16 -28542, i16 255, i16 -28541, i16 236, i16 -28540, i16 158, i16 -28539, i16 254, i16 -28538, i16 2, i16 -28537, i16 10, i16 -28536, i16 234, i16 -14048, i16 71, i16 -14047, i16 56, i16 -14046, i16 128, i16 -14045, i16 137, i16 -28535, i16 236, i16 -28534, i16 211, i16 -28533, i16 148, i16 -28532, i16 32, i16 -28531, i16 64, i16 -28530, i16 1, i16 -28529, i16 28, i16 -28528, i16 144, i16 -28527, i16 211, i16 -28526, i16 212, i16 -28525, i16 236, i16 -28524, i16 240, i16 -28523, i16 2, i16 -28522, i16 71, i16 -28521, i16 61, i16 -14044, i16 69, i16 -14043, i16 202, i16 -14042, i16 128, i16 -14041, i16 152, i16 -28520, i16 18, i16 -28519, i16 119, i16 -28518, i16 214, i16 -28517, i16 2, i16 -28516, i16 69, i16 -28515, i16 205, i16 -14040, i16 32, i16 -14039, i16 213, i16 -14038, i16 128, i16 -14037, i16 158, i16 -28514, i16 144, i16 -28513, i16 130, i16 -28512, i16 24, i16 -28511, i16 224, i16 -28510, i16 180, i16 -28509, i16 3, i16 -28508, i16 14, i16 -28507, i16 144, i16 -28506, i16 131, i16 -28505, i16 191, i16 -28504, i16 224, i16 -28503, i16 96, i16 -28502, i16 8, i16 -28501, i16 144, i16 -28500, i16 129, i16 -28499, i16 252, i16 -28498, i16 224, i16 -28497, i16 255, i16 -28496, i16 195, i16 -28495, i16 19, i16 -28494, i16 240, i16 -28493, i16 144, i16 -28492, i16 129, i16 -28491, i16 252, i16 -28490, i16 224, i16 -28489, i16 255, i16 -28488, i16 2, i16 -28487, i16 32, i16 -28486, i16 218, i16 -14036, i16 112, i16 -14035, i16 188, i16 -14034, i16 128, i16 -14033, i16 187, i16 -28485, i16 144, i16 -28484, i16 130, i16 -28483, i16 24, i16 -28482, i16 224, i16 -28481, i16 180, i16 -28480, i16 3, i16 -28479, i16 6, i16 -28478, i16 144, i16 -28477, i16 193, i16 -28476, i16 6, i16 -28475, i16 116, i16 -28474, i16 5, i16 -28473, i16 240, i16 -28472, i16 144, i16 -28471, i16 211, i16 -28470, i16 160, i16 -28469, i16 2, i16 -28468, i16 112, i16 -28467, i16 191, i16 -14032, i16 114, i16 -14031, i16 33, i16 -14030, i16 129, i16 -14029, i16 59, i16 -28357, i16 125, i16 -28356, i16 2, i16 -28355, i16 127, i16 -28354, i16 123, i16 -28353, i16 2, i16 -28352, i16 114, i16 -28351, i16 37, i16 -14028, i16 40, i16 -14027, i16 174, i16 -14026, i16 128, i16 -14025, i16 210, i16 -28462, i16 240, i16 -28461, i16 144, i16 -28460, i16 210, i16 -28459, i16 10, i16 -28458, i16 2, i16 -28457, i16 40, i16 -28456, i16 180, i16 -14024, i16 40, i16 -14023, i16 177, i16 -14022, i16 128, i16 -14021, i16 217, i16 -28455, i16 144, i16 -28454, i16 131, i16 -28453, i16 186, i16 -28452, i16 224, i16 -28451, i16 255, i16 -28450, i16 144, i16 -28449, i16 210, i16 -28448, i16 8, i16 -28447, i16 224, i16 -28446, i16 228, i16 -28445, i16 239, i16 -28444, i16 240, i16 -28443, i16 163, i16 -28442, i16 224, i16 -28441, i16 116, i16 -28440, i16 255, i16 -28439, i16 240, i16 -28438, i16 144, i16 -28437, i16 210, i16 -28436, i16 10, i16 -28435, i16 2, i16 -28434, i16 40, i16 -28433, i16 180, i16 -14020, i16 41, i16 -14019, i16 121, i16 -14018, i16 128, i16 -14017, i16 240, i16 -28432, i16 240, i16 -28431, i16 144, i16 -28430, i16 210, i16 -28429, i16 14, i16 -28428, i16 2, i16 -28427, i16 41, i16 -28426, i16 127, i16 -14016, i16 41, i16 -14015, i16 124, i16 -14014, i16 128, i16 -14013, i16 247, i16 -28425, i16 144, i16 -28424, i16 131, i16 -28423, i16 186, i16 -28422, i16 224, i16 -28421, i16 255, i16 -28420, i16 144, i16 -28419, i16 210, i16 -28418, i16 12, i16 -28417, i16 224, i16 -28416, i16 228, i16 -28415, i16 239, i16 -28414, i16 240, i16 -28413, i16 163, i16 -28412, i16 224, i16 -28411, i16 116, i16 -28410, i16 255, i16 -28409, i16 240, i16 -28408, i16 144, i16 -28407, i16 210, i16 -28406, i16 14, i16 -28405, i16 2, i16 -28404, i16 41, i16 -28403, i16 127, i16 -14012, i16 42, i16 -14011, i16 66, i16 -14010, i16 129, i16 -14009, i16 14, i16 -28402, i16 240, i16 -28401, i16 144, i16 -28400, i16 210, i16 -28399, i16 18, i16 -28398, i16 2, i16 -28397, i16 42, i16 -28396, i16 72, i16 -14008, i16 42, i16 -14007, i16 69, i16 -14006, i16 129, i16 -14005, i16 21, i16 -28395, i16 144, i16 -28394, i16 131, i16 -28393, i16 186, i16 -28392, i16 224, i16 -28391, i16 255, i16 -28390, i16 144, i16 -28389, i16 210, i16 -28388, i16 16, i16 -28387, i16 224, i16 -28386, i16 228, i16 -28385, i16 239, i16 -28384, i16 240, i16 -28383, i16 163, i16 -28382, i16 224, i16 -28381, i16 116, i16 -28380, i16 255, i16 -28379, i16 240, i16 -28378, i16 144, i16 -28377, i16 210, i16 -28376, i16 18, i16 -28375, i16 2, i16 -28374, i16 42, i16 -28373, i16 72, i16 -14080, i16 1, i16 0, i16 0], [340 x i8] zeroinitializer }, align 32
@vs6624_default = internal constant { [70 x i16], [52 x i8] } { [70 x i16] [i16 948, i16 132, i16 950, i16 117, i16 952, i16 17, i16 1076, i16 132, i16 1078, i16 117, i16 1080, i16 17, i16 5250, i16 128, i16 5252, i16 128, i16 5254, i16 128, i16 5248, i16 1, i16 4496, i16 254, i16 4482, i16 0, i16 3200, i16 100, i16 8192, i16 14, i16 8208, i16 40, i16 954, i16 0, i16 956, i16 0, i16 907, i16 0, i16 908, i16 1, i16 911, i16 0, i16 912, i16 1, i16 917, i16 0, i16 918, i16 15, i16 921, i16 0, i16 922, i16 15, i16 776, i16 1, i16 9604, i16 33, i16 3712, i16 0, i16 3460, i16 1, i16 3458, i16 15, i16 1154, i16 0, i16 944, i16 0, i16 9622, i16 1, i16 896, i16 2, i16 0, i16 0], [52 x i8] zeroinitializer }, align 32
@vs6624_run_setup = internal constant { [78 x i16], [36 x i8] } { [78 x i16] [i16 7448, i16 0, i16 8205, i16 60, i16 8206, i16 102, i16 7939, i16 101, i16 7940, i16 209, i16 7943, i16 102, i16 7944, i16 98, i16 7947, i16 0, i16 7948, i16 0, i16 9728, i16 0, i16 9730, i16 4, i16 9741, i16 99, i16 9742, i16 209, i16 9745, i16 104, i16 9746, i16 221, i16 9749, i16 58, i16 9750, i16 0, i16 9344, i16 0, i16 7562, i16 48, i16 7569, i16 98, i16 7570, i16 74, i16 7573, i16 101, i16 7574, i16 14, i16 7585, i16 58, i16 7586, i16 184, i16 7688, i16 6, i16 7690, i16 10, i16 5633, i16 58, i16 5634, i16 20, i16 5637, i16 59, i16 5638, i16 133, i16 5641, i16 59, i16 5642, i16 133, i16 5645, i16 58, i16 5646, i16 20, i16 5649, i16 48, i16 5650, i16 143, i16 5652, i16 1, i16 0, i16 0], [36 x i8] zeroinitializer }, align 32
@vs6624_default_fmt = internal constant { %struct.v4l2_mbus_framefmt, [48 x i8] } { %struct.v4l2_mbus_framefmt { i32 640, i32 480, i32 8198, i32 1, i32 7, %union.anon.96 zeroinitializer, i16 0, i16 0, i16 0, [10 x i16] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@vs6624_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@vs6624_probe._entry_ptr.7 = internal global ptr @vs6624_probe._entry.5, section ".printk_index", align 4
@vs6624_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vs6624:802:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@vs6624_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vs6624_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vs6624_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vs6624_g_register, ptr @vs6624_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vs6624_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vs6624_s_stream, ptr null, ptr @vs6624_g_frame_interval, ptr @vs6624_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vs6624_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @vs6624_enum_mbus_code, ptr null, ptr null, ptr @vs6624_get_fmt, ptr @vs6624_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vs6624_formats = internal constant { [3 x %struct.vs6624_format], [40 x i8] } { [3 x %struct.vs6624_format] [%struct.vs6624_format { i32 8198, i32 7 }, %struct.vs6624_format { i32 8200, i32 7 }, %struct.vs6624_format { i32 4104, i32 8 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4104, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 4104, i64 8198, i64 8200]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 88, i64 160, i64 176, i64 320, i64 352, i64 640]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 9963777, i64 9963778, i64 9963796, i64 9963797]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"vs6624_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 843, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 845, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"vs6624_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 836, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 759, i32 9 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 761, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"vs6624_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 735, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"vs6624_p1\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 61, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"vs6624_default\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 435, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"vs6624_run_setup\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 393, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"vs6624_default_fmt\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 53, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 798, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 802, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"vs6624_ctrl_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 712, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"vs6624_core_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 716, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"vs6624_video_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 723, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"vs6624_pad_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 729, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"vs6624_formats\00", align 1
@___asan_gen_.76 = private constant [30 x i8] c"../drivers/media/i2c/vs6624.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 38, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_vs6624_driver_exit, ptr @__initcall__kmod_vs6624__292_852_vs6624_driver_init6, ptr @vs6624_driver_exit, ptr @vs6624_probe._entry, ptr @vs6624_probe._entry.5, ptr @vs6624_probe._entry_ptr, ptr @vs6624_probe._entry_ptr.7, ptr @vs6624_driver, ptr @.str, ptr @vs6624_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vs6624_ops, ptr @vs6624_p1, ptr @vs6624_default, ptr @vs6624_run_setup, ptr @vs6624_default_fmt, ptr @.str.6, ptr @vs6624_probe._key, ptr @.str.8, ptr @vs6624_ctrl_ops, ptr @vs6624_core_ops, ptr @vs6624_video_ops, ptr @vs6624_pad_ops, ptr @vs6624_formats], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_p1 to i32), i32 1292, i32 1632, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_default to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_run_setup to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_default_fmt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs6624_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vs6624_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vs6624_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @vs6624_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i187 = alloca [3 x i8], align 1
  %buf.i184 = alloca [3 x i8], align 1
  %buf.i181 = alloca [3 x i8], align 1
  %buf.i178 = alloca [3 x i8], align 1
  %buf.i.i163 = alloca [3 x i8], align 1
  %buf.i160 = alloca [3 x i8], align 1
  %buf.i.i145 = alloca [3 x i8], align 1
  %buf.i.i130 = alloca [3 x i8], align 1
  %buf.i127 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  %buf.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call4 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %9, i32 noundef 2, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %17, i32 noundef %conv, i32 noundef %21) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end2
  tail call void @msleep(i32 noundef 100) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #7
  %cmp14 = icmp eq ptr %call.i, null
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @vs6624_ops) #7
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end17
  %.off0.i = phi i8 [ 4, %if.end17 ], [ %extract.t3.i, %while.body.i.while.body.i_crit_edge ]
  %.off8.i = phi i8 [ -127, %if.end17 ], [ %extract.t6.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.02.i = phi ptr [ @vs6624_p1, %if.end17 ], [ %incdec.ptr2.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %regs.addr.02.i, i32 1
  %incdec.ptr2.i = getelementptr i16, ptr %regs.addr.02.i, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr.i, align 2
  %conv3.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.off8.i, ptr %buf.i.i, align 1
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.off0.i, ptr %22, align 1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i, ptr %23, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %31 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %incdec.ptr2.i, align 2
  %cmp.not.i = icmp eq i16 %32, 0
  %extract.t3.i = trunc i16 %32 to i8
  %extract5.i = lshr i16 %32, 8
  %extract.t6.i = trunc i16 %extract5.i to i8
  br i1 %cmp.not.i, label %vs6624_writeregs.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

vs6624_writeregs.exit:                            ; preds = %while.body.i
  %33 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %35 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -64, ptr %buf.i, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %36, align 1
  %call.i.i126 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %40 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i127) #7
  %42 = getelementptr inbounds [3 x i8], ptr %buf.i127, i32 0, i32 1
  %43 = getelementptr inbounds [3 x i8], ptr %buf.i127, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -64, ptr %buf.i127, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 68, ptr %42, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %43, align 1
  %call.i.i129 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buf.i127, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i127) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %47 = getelementptr inbounds [3 x i8], ptr %buf.i.i130, i32 0, i32 1
  %48 = getelementptr inbounds [3 x i8], ptr %buf.i.i130, i32 0, i32 2
  %49 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i130) #7
  %51 = ptrtoint ptr %buf.i.i130 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %buf.i.i130, align 1
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 111, ptr %47, align 1
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %48, align 1
  %call.i.i.i138 = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %buf.i.i130, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i130) #7
  %54 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i130) #7
  %56 = ptrtoint ptr %buf.i.i130 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %buf.i.i130, align 1
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -116, ptr %47, align 1
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %48, align 1
  %call.i.i.i138.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef nonnull %buf.i.i130, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i130) #7
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i.i145, i32 0, i32 1
  %60 = getelementptr inbounds [3 x i8], ptr %buf.i.i145, i32 0, i32 2
  br label %while.body.i158

while.body.i158:                                  ; preds = %while.body.i158.while.body.i158_crit_edge, %vs6624_writeregs.exit
  %.off0.i147 = phi i8 [ -76, %vs6624_writeregs.exit ], [ %extract.t3.i155, %while.body.i158.while.body.i158_crit_edge ]
  %.off8.i148 = phi i8 [ 3, %vs6624_writeregs.exit ], [ %extract.t6.i157, %while.body.i158.while.body.i158_crit_edge ]
  %regs.addr.02.i149 = phi ptr [ @vs6624_default, %vs6624_writeregs.exit ], [ %incdec.ptr2.i151, %while.body.i158.while.body.i158_crit_edge ]
  %incdec.ptr.i150 = getelementptr i16, ptr %regs.addr.02.i149, i32 1
  %incdec.ptr2.i151 = getelementptr i16, ptr %regs.addr.02.i149, i32 2
  %61 = ptrtoint ptr %incdec.ptr.i150 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %incdec.ptr.i150, align 2
  %conv3.i152 = trunc i16 %62 to i8
  %63 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i145) #7
  %65 = ptrtoint ptr %buf.i.i145 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.off8.i148, ptr %buf.i.i145, align 1
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.off0.i147, ptr %59, align 1
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv3.i152, ptr %60, align 1
  %call.i.i.i153 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %buf.i.i145, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i145) #7
  %68 = ptrtoint ptr %incdec.ptr2.i151 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr2.i151, align 2
  %cmp.not.i154 = icmp eq i16 %69, 0
  %extract.t3.i155 = trunc i16 %69 to i8
  %extract5.i156 = lshr i16 %69, 8
  %extract.t6.i157 = trunc i16 %extract5.i156 to i8
  br i1 %cmp.not.i154, label %vs6624_writeregs.exit159, label %while.body.i158.while.body.i158_crit_edge

while.body.i158.while.body.i158_crit_edge:        ; preds = %while.body.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i158

vs6624_writeregs.exit159:                         ; preds = %while.body.i158
  %70 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i160) #7
  %72 = getelementptr inbounds [3 x i8], ptr %buf.i160, i32 0, i32 1
  %73 = getelementptr inbounds [3 x i8], ptr %buf.i160, i32 0, i32 2
  %74 = ptrtoint ptr %buf.i160 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 37, ptr %buf.i160, align 1
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -122, ptr %72, align 1
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 15, ptr %73, align 1
  %call.i.i162 = call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef nonnull %buf.i160, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i160) #7
  %77 = getelementptr inbounds [3 x i8], ptr %buf.i.i163, i32 0, i32 1
  %78 = getelementptr inbounds [3 x i8], ptr %buf.i.i163, i32 0, i32 2
  br label %while.body.i176

while.body.i176:                                  ; preds = %while.body.i176.while.body.i176_crit_edge, %vs6624_writeregs.exit159
  %.off0.i165 = phi i8 [ 24, %vs6624_writeregs.exit159 ], [ %extract.t3.i173, %while.body.i176.while.body.i176_crit_edge ]
  %.off8.i166 = phi i8 [ 29, %vs6624_writeregs.exit159 ], [ %extract.t6.i175, %while.body.i176.while.body.i176_crit_edge ]
  %regs.addr.02.i167 = phi ptr [ @vs6624_run_setup, %vs6624_writeregs.exit159 ], [ %incdec.ptr2.i169, %while.body.i176.while.body.i176_crit_edge ]
  %incdec.ptr.i168 = getelementptr i16, ptr %regs.addr.02.i167, i32 1
  %incdec.ptr2.i169 = getelementptr i16, ptr %regs.addr.02.i167, i32 2
  %79 = ptrtoint ptr %incdec.ptr.i168 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %incdec.ptr.i168, align 2
  %conv3.i170 = trunc i16 %80 to i8
  %81 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i163) #7
  %83 = ptrtoint ptr %buf.i.i163 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %.off8.i166, ptr %buf.i.i163, align 1
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.off0.i165, ptr %77, align 1
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv3.i170, ptr %78, align 1
  %call.i.i.i171 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %buf.i.i163, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i163) #7
  %86 = ptrtoint ptr %incdec.ptr2.i169 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %incdec.ptr2.i169, align 2
  %cmp.not.i172 = icmp eq i16 %87, 0
  %extract.t3.i173 = trunc i16 %87 to i8
  %extract5.i174 = lshr i16 %87, 8
  %extract.t6.i175 = trunc i16 %extract5.i174 to i8
  br i1 %cmp.not.i172, label %vs6624_writeregs.exit177, label %while.body.i176.while.body.i176_crit_edge

while.body.i176.while.body.i176_crit_edge:        ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i176

vs6624_writeregs.exit177:                         ; preds = %while.body.i176
  %frame_rate = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 2
  %88 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 30, ptr %frame_rate, align 4
  %denominator = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %denominator, align 4
  %90 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i178) #7
  %92 = getelementptr inbounds [3 x i8], ptr %buf.i178, i32 0, i32 1
  %93 = getelementptr inbounds [3 x i8], ptr %buf.i178, i32 0, i32 2
  %94 = ptrtoint ptr %buf.i178 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 14, ptr %buf.i178, align 1
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -128, ptr %92, align 1
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %93, align 1
  %call.i.i180 = call i32 @i2c_transfer_buffer_flags(ptr noundef %91, ptr noundef nonnull %buf.i178, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i178) #7
  %97 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %frame_rate, align 4
  %shr = lshr i32 %98, 8
  %conv30 = trunc i32 %shr to i8
  %99 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i181) #7
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i181, i32 0, i32 1
  %102 = getelementptr inbounds [3 x i8], ptr %buf.i181, i32 0, i32 2
  %103 = ptrtoint ptr %buf.i181 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 13, ptr %buf.i181, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -127, ptr %101, align 1
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv30, ptr %102, align 1
  %call.i.i183 = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %buf.i181, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i181) #7
  %106 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %frame_rate, align 4
  %conv34 = trunc i32 %107 to i8
  %108 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i184) #7
  %110 = getelementptr inbounds [3 x i8], ptr %buf.i184, i32 0, i32 1
  %111 = getelementptr inbounds [3 x i8], ptr %buf.i184, i32 0, i32 2
  %112 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 13, ptr %buf.i184, align 1
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -126, ptr %110, align 1
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv34, ptr %111, align 1
  %call.i.i186 = call i32 @i2c_transfer_buffer_flags(ptr noundef %109, ptr noundef nonnull %buf.i184, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i184) #7
  %115 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %denominator, align 4
  %conv39 = trunc i32 %116 to i8
  %117 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i187) #7
  %119 = getelementptr inbounds [3 x i8], ptr %buf.i187, i32 0, i32 1
  %120 = getelementptr inbounds [3 x i8], ptr %buf.i187, i32 0, i32 2
  %121 = ptrtoint ptr %buf.i187 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 13, ptr %buf.i187, align 1
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -124, ptr %119, align 1
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv39, ptr %120, align 1
  %call.i.i189 = call i32 @i2c_transfer_buffer_flags(ptr noundef %118, ptr noundef nonnull %buf.i187, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i187) #7
  %fmt = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 3
  %124 = call ptr @memcpy(ptr %fmt, ptr @vs6624_default_fmt, i32 48)
  %125 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %7, align 4
  %ce_pin = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 4
  %127 = ptrtoint ptr %ce_pin to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %ce_pin, align 4
  %driver46 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %128 = ptrtoint ptr %driver46 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %driver46, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %132 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter, align 8
  %nr.i190 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %nr.i190 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nr.i190, align 4
  %addr50 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %136 = ptrtoint ptr %addr50 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %addr50, align 2
  %conv51 = zext i16 %137 to i32
  %shl = shl nuw nsw i32 %conv51, 1
  %name55 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 12
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %131, i32 noundef %135, i32 noundef %conv51, i32 noundef %shl, ptr noundef %name55) #10
  %hdl57 = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 1
  %call59 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl57, i32 noundef 4, ptr noundef nonnull @vs6624_probe._key, ptr noundef nonnull @.str.8) #7
  %call60 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl57, ptr noundef nonnull @vs6624_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 135) #7
  %call61 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl57, ptr noundef nonnull @vs6624_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 120) #7
  %call62 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl57, ptr noundef nonnull @vs6624_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call63 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl57, ptr noundef nonnull @vs6624_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %138 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %hdl57, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.vs6624, ptr %call.i, i32 0, i32 1, i32 9
  %139 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool64.not = icmp eq i32 %140, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %vs6624_writeregs.exit177
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl57) #7
  br label %cleanup

if.end67:                                         ; preds = %vs6624_writeregs.exit177
  %call68 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end67.cleanup_crit_edge, %if.then65, %if.end11.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %140, %if.then65 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %call68, %if.then70 ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = lshr i64 %1, 8
  %conv1.i = trunc i64 %5 to i8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv2.i = trunc i64 %1 to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2.i, ptr %4, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  %call.i11.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 1, i16 noundef zeroext 1) #7
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %10 = zext i8 %9 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %8 = lshr i64 %1, 8
  %conv1.i = trunc i64 %8 to i8
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv2.i = trunc i64 %1 to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %6, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %7, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i3 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %dev_priv.i.i4 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %3, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i3) #7
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %buf.i3, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %8, align 1
  %call.i.i5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i3, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 21474800) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vs6624_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %ival) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_rate = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 2
  %denominator = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %denominator, align 4
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %interval, align 4
  %3 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_rate, align 4
  %denominator4 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %denominator4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %denominator4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_s_frame_interval(ptr nocapture noundef %sd, ptr nocapture noundef %ival) #2 align 64 {
entry:
  %buf.i48 = alloca [3 x i8], align 1
  %buf.i45 = alloca [3 x i8], align 1
  %buf.i42 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %mul = mul i32 %1, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp5 = icmp ugt i32 %3, %mul
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp5
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %interval, align 4
  %denominator7 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %denominator7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %denominator7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %denominator8 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %denominator8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %denominator8, align 4
  %frame_rate = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 2
  %8 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frame_rate, align 4
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interval, align 4
  %denominator12 = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %denominator12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %denominator12, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 14, ptr %buf.i, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %19 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_rate, align 4
  %shr = lshr i32 %20, 8
  %conv = trunc i32 %shr to i8
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i42) #7
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i42, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %buf.i42, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i42 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 13, ptr %buf.i42, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -127, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %24, align 1
  %call.i.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %buf.i42, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i42) #7
  %28 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_rate, align 4
  %conv19 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i45) #7
  %32 = getelementptr inbounds [3 x i8], ptr %buf.i45, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i8], ptr %buf.i45, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 13, ptr %buf.i45, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -126, ptr %32, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv19, ptr %33, align 1
  %call.i.i47 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %buf.i45, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i45) #7
  %37 = ptrtoint ptr %denominator12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %denominator12, align 4
  %conv24 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i48) #7
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i48, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %buf.i48, i32 0, i32 2
  %43 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 13, ptr %buf.i48, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -124, ptr %41, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv24, ptr %42, align 1
  %call.i.i50 = call i32 @i2c_transfer_buffer_flags(ptr noundef %40, ptr noundef nonnull %buf.i48, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i48) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vs6624_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [3 x %struct.vs6624_format], ptr @vs6624_formats, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vs6624_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %format1, ptr %fmt, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_set_fmt(ptr nocapture noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  %buf.i209 = alloca [3 x i8], align 1
  %buf.i206 = alloca [3 x i8], align 1
  %buf.i203 = alloca [3 x i8], align 1
  %buf.i200 = alloca [3 x i8], align 1
  %buf.i197 = alloca [3 x i8], align 1
  %buf.i194 = alloca [3 x i8], align 1
  %buf.i191 = alloca [3 x i8], align 1
  %buf.i188 = alloca [3 x i8], align 1
  %buf.i185 = alloca [3 x i8], align 1
  %buf.i182 = alloca [3 x i8], align 1
  %buf.i179 = alloca [3 x i8], align 1
  %buf.i176 = alloca [3 x i8], align 1
  %buf.i173 = alloca [3 x i8], align 1
  %buf.i170 = alloca [3 x i8], align 1
  %buf.i167 = alloca [3 x i8], align 1
  %buf.i164 = alloca [3 x i8], align 1
  %buf.i161 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.inc.2 [
    i32 8198, label %for.cond.preheader.if.end8_crit_edge
    i32 8200, label %if.end8.fold.split
    i32 4104, label %if.end8.fold.split227
  ]

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.2:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8198, ptr %code, align 4
  br label %if.end8

if.end8.fold.split:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.fold.split227:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.end8.fold.split227, %if.end8.fold.split, %for.inc.2, %for.cond.preheader.if.end8_crit_edge
  %index.1 = phi i32 [ 0, %for.inc.2 ], [ 0, %for.cond.preheader.if.end8_crit_edge ], [ 1, %if.end8.fold.split ], [ 2, %if.end8.fold.split227 ]
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp9 = icmp ugt i32 %7, 640
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 640, ptr %format1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %10)
  %cmp13 = icmp ugt i32 %10, 480
  br i1 %cmp13, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 480, ptr %height, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %12 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format1, align 4
  %and = and i32 %13, -4
  store i32 %and, ptr %format1, align 4
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %and20 = and i32 %15, -4
  store i32 %and20, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr [3 x %struct.vs6624_format], ptr @vs6624_formats, i32 0, i32 %index.1, i32 1
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %colorspace, align 4
  %colorspace23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %colorspace23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %colorspace23, align 4
  %20 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_state, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %format1, i32 48)
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %25 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %26, label %if.end26.cleanup_crit_edge [
    i32 8198, label %sw.bb
    i32 8200, label %sw.bb30
    i32 4104, label %sw.bb33
  ]

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %30 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %buf.i, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -80, ptr %30, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %31, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i161) #7
  %37 = getelementptr inbounds [3 x i8], ptr %buf.i161, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %buf.i161, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i161 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 37, ptr %buf.i161, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -106, ptr %37, align 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %38, align 1
  %call.i.i163 = call i32 @i2c_transfer_buffer_flags(ptr noundef %36, ptr noundef nonnull %buf.i161, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i161) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i165 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %42 = ptrtoint ptr %dev_priv.i.i165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i165, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i164) #7
  %44 = getelementptr inbounds [3 x i8], ptr %buf.i164, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i8], ptr %buf.i164, i32 0, i32 2
  %46 = ptrtoint ptr %buf.i164 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %buf.i164, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -80, ptr %44, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %45, align 1
  %call.i.i166 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf.i164, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i164) #7
  %49 = ptrtoint ptr %dev_priv.i.i165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i165, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i167) #7
  %51 = getelementptr inbounds [3 x i8], ptr %buf.i167, i32 0, i32 1
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i167, i32 0, i32 2
  %53 = ptrtoint ptr %buf.i167 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 37, ptr %buf.i167, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -106, ptr %51, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %52, align 1
  %call.i.i169 = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %buf.i167, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i167) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i171 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %56 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i171, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i170) #7
  %58 = getelementptr inbounds [3 x i8], ptr %buf.i170, i32 0, i32 1
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i170, i32 0, i32 2
  %60 = ptrtoint ptr %buf.i170 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %buf.i170, align 1
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -80, ptr %58, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %59, align 1
  %call.i.i172 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i170, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i170) #7
  %63 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i171, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i173) #7
  %65 = getelementptr inbounds [3 x i8], ptr %buf.i173, i32 0, i32 1
  %66 = getelementptr inbounds [3 x i8], ptr %buf.i173, i32 0, i32 2
  %67 = ptrtoint ptr %buf.i173 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 37, ptr %buf.i173, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -108, ptr %65, align 1
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %66, align 1
  %call.i.i175 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %buf.i173, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i173) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb30, %sw.bb
  %70 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format1, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %71, label %sw.epilog.if.else81_crit_edge [
    i32 640, label %land.lhs.true
    i32 320, label %land.lhs.true44
    i32 160, label %land.lhs.true52
    i32 352, label %land.lhs.true60
    i32 176, label %land.lhs.true68
    i32 88, label %land.lhs.true76
  ]

sw.epilog.if.else81_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

land.lhs.true:                                    ; preds = %sw.epilog
  %73 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %74)
  %cmp39 = icmp eq i32 %74, 480
  br i1 %cmp39, label %if.then40, label %land.lhs.true.if.else81_crit_edge

land.lhs.true.if.else81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i177 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %75 = ptrtoint ptr %dev_priv.i.i177 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_priv.i.i177, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i176) #7
  %77 = getelementptr inbounds [3 x i8], ptr %buf.i176, i32 0, i32 1
  %78 = getelementptr inbounds [3 x i8], ptr %buf.i176, i32 0, i32 2
  %79 = ptrtoint ptr %buf.i176 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %buf.i176, align 1
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -128, ptr %77, align 1
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %78, align 1
  %call.i.i178 = call i32 @i2c_transfer_buffer_flags(ptr noundef %76, ptr noundef nonnull %buf.i176, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i176) #7
  br label %if.end103

land.lhs.true44:                                  ; preds = %sw.epilog
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %83)
  %cmp46 = icmp eq i32 %83, 240
  br i1 %cmp46, label %if.then47, label %land.lhs.true44.if.else81_crit_edge

land.lhs.true44.if.else81_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i180 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %84 = ptrtoint ptr %dev_priv.i.i180 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv.i.i180, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i179) #7
  %86 = getelementptr inbounds [3 x i8], ptr %buf.i179, i32 0, i32 1
  %87 = getelementptr inbounds [3 x i8], ptr %buf.i179, i32 0, i32 2
  %88 = ptrtoint ptr %buf.i179 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 3, ptr %buf.i179, align 1
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -128, ptr %86, align 1
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %87, align 1
  %call.i.i181 = call i32 @i2c_transfer_buffer_flags(ptr noundef %85, ptr noundef nonnull %buf.i179, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i179) #7
  br label %if.end103

land.lhs.true52:                                  ; preds = %sw.epilog
  %91 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %92)
  %cmp54 = icmp eq i32 %92, 120
  br i1 %cmp54, label %if.then55, label %land.lhs.true52.if.else81_crit_edge

land.lhs.true52.if.else81_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i183 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %93 = ptrtoint ptr %dev_priv.i.i183 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_priv.i.i183, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i182) #7
  %95 = getelementptr inbounds [3 x i8], ptr %buf.i182, i32 0, i32 1
  %96 = getelementptr inbounds [3 x i8], ptr %buf.i182, i32 0, i32 2
  %97 = ptrtoint ptr %buf.i182 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %buf.i182, align 1
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -128, ptr %95, align 1
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 6, ptr %96, align 1
  %call.i.i184 = call i32 @i2c_transfer_buffer_flags(ptr noundef %94, ptr noundef nonnull %buf.i182, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i182) #7
  br label %if.end103

land.lhs.true60:                                  ; preds = %sw.epilog
  %100 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %101)
  %cmp62 = icmp eq i32 %101, 288
  br i1 %cmp62, label %if.then63, label %land.lhs.true60.if.else81_crit_edge

land.lhs.true60.if.else81_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i186 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %102 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_priv.i.i186, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i185) #7
  %104 = getelementptr inbounds [3 x i8], ptr %buf.i185, i32 0, i32 1
  %105 = getelementptr inbounds [3 x i8], ptr %buf.i185, i32 0, i32 2
  %106 = ptrtoint ptr %buf.i185 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %buf.i185, align 1
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -128, ptr %104, align 1
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %105, align 1
  %call.i.i187 = call i32 @i2c_transfer_buffer_flags(ptr noundef %103, ptr noundef nonnull %buf.i185, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i185) #7
  br label %if.end103

land.lhs.true68:                                  ; preds = %sw.epilog
  %109 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %110)
  %cmp70 = icmp eq i32 %110, 144
  br i1 %cmp70, label %if.then71, label %land.lhs.true68.if.else81_crit_edge

land.lhs.true68.if.else81_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i189 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %111 = ptrtoint ptr %dev_priv.i.i189 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_priv.i.i189, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i188) #7
  %113 = getelementptr inbounds [3 x i8], ptr %buf.i188, i32 0, i32 1
  %114 = getelementptr inbounds [3 x i8], ptr %buf.i188, i32 0, i32 2
  %115 = ptrtoint ptr %buf.i188 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %buf.i188, align 1
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -128, ptr %113, align 1
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 5, ptr %114, align 1
  %call.i.i190 = call i32 @i2c_transfer_buffer_flags(ptr noundef %112, ptr noundef nonnull %buf.i188, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i188) #7
  br label %if.end103

land.lhs.true76:                                  ; preds = %sw.epilog
  %118 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %119)
  %cmp78 = icmp eq i32 %119, 72
  br i1 %cmp78, label %if.then79, label %land.lhs.true76.if.else81_crit_edge

land.lhs.true76.if.else81_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else81

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i.i192 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %120 = ptrtoint ptr %dev_priv.i.i192 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i.i192, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i191) #7
  %122 = getelementptr inbounds [3 x i8], ptr %buf.i191, i32 0, i32 1
  %123 = getelementptr inbounds [3 x i8], ptr %buf.i191, i32 0, i32 2
  %124 = ptrtoint ptr %buf.i191 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %buf.i191, align 1
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -128, ptr %122, align 1
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 7, ptr %123, align 1
  %call.i.i193 = call i32 @i2c_transfer_buffer_flags(ptr noundef %121, ptr noundef nonnull %buf.i191, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i191) #7
  br label %if.end103

if.else81:                                        ; preds = %land.lhs.true76.if.else81_crit_edge, %land.lhs.true68.if.else81_crit_edge, %land.lhs.true60.if.else81_crit_edge, %land.lhs.true52.if.else81_crit_edge, %land.lhs.true44.if.else81_crit_edge, %land.lhs.true.if.else81_crit_edge, %sw.epilog.if.else81_crit_edge
  %dev_priv.i.i195 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %127 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i194) #7
  %129 = getelementptr inbounds [3 x i8], ptr %buf.i194, i32 0, i32 1
  %130 = getelementptr inbounds [3 x i8], ptr %buf.i194, i32 0, i32 2
  %131 = ptrtoint ptr %buf.i194 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 3, ptr %buf.i194, align 1
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -128, ptr %129, align 1
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 8, ptr %130, align 1
  %call.i.i196 = call i32 @i2c_transfer_buffer_flags(ptr noundef %128, ptr noundef nonnull %buf.i194, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i194) #7
  %134 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %format1, align 4
  %shr = lshr i32 %135, 8
  %conv = trunc i32 %shr to i8
  %136 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i197) #7
  %138 = getelementptr inbounds [3 x i8], ptr %buf.i197, i32 0, i32 1
  %139 = getelementptr inbounds [3 x i8], ptr %buf.i197, i32 0, i32 2
  %140 = ptrtoint ptr %buf.i197 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 3, ptr %buf.i197, align 1
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -125, ptr %138, align 1
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv, ptr %139, align 1
  %call.i.i199 = call i32 @i2c_transfer_buffer_flags(ptr noundef %137, ptr noundef nonnull %buf.i197, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i197) #7
  %143 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %format1, align 4
  %conv87 = trunc i32 %144 to i8
  %145 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i200) #7
  %147 = getelementptr inbounds [3 x i8], ptr %buf.i200, i32 0, i32 1
  %148 = getelementptr inbounds [3 x i8], ptr %buf.i200, i32 0, i32 2
  %149 = ptrtoint ptr %buf.i200 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 3, ptr %buf.i200, align 1
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -124, ptr %147, align 1
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv87, ptr %148, align 1
  %call.i.i202 = call i32 @i2c_transfer_buffer_flags(ptr noundef %146, ptr noundef nonnull %buf.i200, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i200) #7
  %152 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %height, align 4
  %shr90 = lshr i32 %153, 8
  %conv91 = trunc i32 %shr90 to i8
  %154 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i203) #7
  %156 = getelementptr inbounds [3 x i8], ptr %buf.i203, i32 0, i32 1
  %157 = getelementptr inbounds [3 x i8], ptr %buf.i203, i32 0, i32 2
  %158 = ptrtoint ptr %buf.i203 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 3, ptr %buf.i203, align 1
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -121, ptr %156, align 1
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv91, ptr %157, align 1
  %call.i.i205 = call i32 @i2c_transfer_buffer_flags(ptr noundef %155, ptr noundef nonnull %buf.i203, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i203) #7
  %161 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %height, align 4
  %conv95 = trunc i32 %162 to i8
  %163 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i206) #7
  %165 = getelementptr inbounds [3 x i8], ptr %buf.i206, i32 0, i32 1
  %166 = getelementptr inbounds [3 x i8], ptr %buf.i206, i32 0, i32 2
  %167 = ptrtoint ptr %buf.i206 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %buf.i206, align 1
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -120, ptr %165, align 1
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv95, ptr %166, align 1
  %call.i.i208 = call i32 @i2c_transfer_buffer_flags(ptr noundef %164, ptr noundef nonnull %buf.i206, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i206) #7
  %170 = ptrtoint ptr %dev_priv.i.i195 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_priv.i.i195, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i209) #7
  %172 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 1
  %173 = getelementptr inbounds [3 x i8], ptr %buf.i209, i32 0, i32 2
  %174 = ptrtoint ptr %buf.i209 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 3, ptr %buf.i209, align 1
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -98, ptr %172, align 1
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %173, align 1
  %call.i.i211 = call i32 @i2c_transfer_buffer_flags(ptr noundef %171, ptr noundef nonnull %buf.i209, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i209) #7
  br label %if.end103

if.end103:                                        ; preds = %if.else81, %if.then79, %if.then71, %if.then63, %if.then55, %if.then47, %if.then40
  %fmt104 = getelementptr inbounds %struct.vs6624, ptr %sd, i32 0, i32 3
  %177 = call ptr @memcpy(ptr %fmt104, ptr %format1, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end26.cleanup_crit_edge, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.end103 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vs6624_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i28 = alloca [3 x i8], align 1
  %buf.i25 = alloca [3 x i8], align 1
  %buf.i22 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963777, label %sw.bb
    i32 9963778, label %sw.bb2
    i32 9963796, label %sw.bb6
    i32 9963797, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %buf.i, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -76, ptr %9, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %10, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val3, align 4
  %conv4 = trunc i32 %15 to i8
  %dev_priv.i.i23 = getelementptr i8, ptr %1, i32 -44
  %16 = ptrtoint ptr %dev_priv.i.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i23, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i22) #7
  %18 = getelementptr inbounds [3 x i8], ptr %buf.i22, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i22, i32 0, i32 2
  %20 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %buf.i22, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -74, ptr %18, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4, ptr %19, align 1
  %call.i.i24 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %buf.i22, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i22) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %24 to i8
  %dev_priv.i.i26 = getelementptr i8, ptr %1, i32 -44
  %25 = ptrtoint ptr %dev_priv.i.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i26, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i25) #7
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i25, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i25, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %buf.i25, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -70, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv8, ptr %28, align 1
  %call.i.i27 = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %buf.i25, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i25) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %33 to i8
  %dev_priv.i.i29 = getelementptr i8, ptr %1, i32 -44
  %34 = ptrtoint ptr %dev_priv.i.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i29, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i28) #7
  %36 = getelementptr inbounds [3 x i8], ptr %buf.i28, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %buf.i28, i32 0, i32 2
  %38 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %buf.i28, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -68, ptr %36, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv12, ptr %37, align 1
  %call.i.i30 = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %buf.i28, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i28) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_vs6624__292_852_vs6624_driver_init6, !1, !"__initcall__kmod_vs6624__292_852_vs6624_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/vs6624.c", i32 852, i32 1}
!2 = !{ptr @__exitcall_vs6624_driver_exit, !1, !"__exitcall_vs6624_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/vs6624.c", i32 854, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/vs6624.c", i32 855, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/vs6624.c", i32 856, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/vs6624.c", i32 845, i32 13}
!12 = !{ptr @vs6624_driver, !13, !"vs6624_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/vs6624.c", i32 843, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/vs6624.c", i32 759, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/vs6624.c", i32 761, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vs6624_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @vs6624_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/vs6624.c", i32 798, i32 2}
!24 = !{ptr @vs6624_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vs6624_probe._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @vs6624_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/vs6624.c", i32 802, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vs6624_ops, !30, !"vs6624_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/vs6624.c", i32 735, i32 37}
!31 = !{ptr @vs6624_core_ops, !32, !"vs6624_core_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/vs6624.c", i32 716, i32 42}
!33 = !{ptr @vs6624_video_ops, !34, !"vs6624_video_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/vs6624.c", i32 723, i32 43}
!35 = !{ptr @vs6624_pad_ops, !36, !"vs6624_pad_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/vs6624.c", i32 729, i32 41}
!37 = !{ptr @vs6624_formats, !38, !"vs6624_formats", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/vs6624.c", i32 38, i32 3}
!39 = !{ptr @vs6624_p1, !40, !"vs6624_p1", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/vs6624.c", i32 61, i32 18}
!41 = distinct !{null, !42, !"vs6624_p2", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/vs6624.c", i32 387, i32 18}
!43 = !{ptr @vs6624_default, !44, !"vs6624_default", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/vs6624.c", i32 435, i32 18}
!45 = !{ptr @vs6624_run_setup, !46, !"vs6624_run_setup", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/vs6624.c", i32 393, i32 18}
!47 = !{ptr @vs6624_default_fmt, !48, !"vs6624_default_fmt", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/vs6624.c", i32 53, i32 40}
!49 = !{ptr @vs6624_ctrl_ops, !50, !"vs6624_ctrl_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/vs6624.c", i32 712, i32 35}
!51 = !{ptr @vs6624_id, !52, !"vs6624_id", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/vs6624.c", i32 836, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
