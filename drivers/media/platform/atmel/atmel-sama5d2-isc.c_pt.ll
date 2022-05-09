; ModuleID = '/llk/IR_all_yes/drivers/media/platform/atmel/atmel-sama5d2-isc.c_pt.bc'
source_filename = "../drivers/media/platform/atmel/atmel-sama5d2-isc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.isc_format = type { i32, i32, i32, i8, i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.122, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.122 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.isc_device = type { ptr, ptr, ptr, [2 x %struct.isc_clk], i8, i32, ptr, %struct.v4l2_device, %struct.video_device, %struct.vb2_queue, %struct.spinlock, %struct.list_head, ptr, i32, i8, %struct.completion, %struct.v4l2_format, ptr, i32, %struct.fmt_config, %struct.fmt_config, %struct.isc_ctrls, %struct.work_struct, %struct.mutex, %struct.spinlock, [15 x ptr], ptr, %struct.list_head, %struct.anon.120, ptr, i32, i32, i32, %struct.anon.121, %struct.isc_reg_offsets, ptr, ptr, i32, i32 }
%struct.isc_clk = type { %struct.clk_hw, ptr, ptr, %struct.spinlock, i8, i8, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.fmt_config = type { ptr, i32, i8, i32, i32, i32, i32 }
%struct.isc_ctrls = type { %struct.v4l2_ctrl_handler, i32, i32, i8, i8, [4 x i32], [4 x i32], [512 x i32], [4 x i32], i8, i8, [4 x [2 x i32]] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.120 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isc_reg_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.isc_subdev_entity = type { ptr, ptr, ptr, %struct.v4l2_async_notifier, i32, %struct.list_head }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }

@__initcall__kmod_atmel_isc__299_639_atmel_isc_driver_init6 = internal global ptr @atmel_isc_driver_init, section ".initcall6.init", align 4
@atmel_isc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_isc_probe, ptr @atmel_isc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_isc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_isc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_isc_driver_exit = internal global ptr @atmel_isc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [28 x i8] c"atmel_isc.author=Songjun Wu\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [52 x i8] c"atmel_isc.description=The V4L2 driver for Atmel-ISC\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [54 x i8] c"atmel_isc.file=drivers/media/platform/atmel/atmel-isc\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"atmel_isc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel-sama5d2-isc\00", [46 x i8] zeroinitializer }, align 32
@atmel_isc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-isc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_isc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isc_runtime_suspend, ptr @isc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_isc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@isc_regmap_config = external dso_local constant %struct.regmap_config, align 4
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atmel_sama5d2_isc:404:(&isc_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init register map: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_isc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/atmel/atmel-sama5d2-isc.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr = internal global ptr @atmel_isc_probe._entry, section ".printk_index", align 4
@atmel_isc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't register ISR for IRQ %u (ret=%i)\0A\00", [56 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.9 = internal global ptr @atmel_isc_probe._entry.7, section ".printk_index", align 4
@isc_sama5d2_gamma_table = internal constant { [3 x [64 x i32]], [192 x i8] } { [3 x [64 x i32]] [[64 x i32] [i32 101, i32 6684719, i32 9764901, i32 12255264, i32 14352413, i32 16252954, i32 18022424, i32 19595287, i32 21102614, i32 22544404, i32 23920659, i32 25231378, i32 26476562, i32 27656210, i32 28835857, i32 29949968, i32 31064080, i32 32112655, i32 33161231, i32 34144271, i32 35127311, i32 36110350, i32 37027854, i32 37945358, i32 38862862, i32 39780365, i32 40632333, i32 41484301, i32 42336269, i32 43188236, i32 44040204, i32 44826636, i32 45613068, i32 46399500, i32 47185931, i32 47972363, i32 48693259, i32 49479691, i32 50200587, i32 50921483, i32 51642379, i32 52363274, i32 53084170, i32 53739531, i32 54460426, i32 55115786, i32 55836682, i32 56492042, i32 57147402, i32 57802762, i32 58458122, i32 59113482, i32 59768841, i32 60358666, i32 61014025, i32 61669385, i32 62259209, i32 62849034, i32 63504393, i32 64094217, i32 64684041, i32 65273865, i32 65863689, i32 66453513], [64 x i32] [i32 127, i32 8388660, i32 11862056, i32 14549025, i32 16777246, i32 18743323, i32 20512793, i32 22151191, i32 23724053, i32 25165844, i32 26476564, i32 27787283, i32 29032466, i32 30212113, i32 31391760, i32 32440336, i32 33554447, i32 34537487, i32 35586062, i32 36503567, i32 37486606, i32 38404110, i32 39321613, i32 40173581, i32 41091084, i32 41877517, i32 42729484, i32 43581452, i32 44367884, i32 45154315, i32 45875212, i32 46661643, i32 47382540, i32 48168971, i32 48889866, i32 49610762, i32 50266123, i32 50987018, i32 51642379, i32 52363274, i32 53018634, i32 53673994, i32 54329353, i32 54984713, i32 55574538, i32 56229897, i32 56819722, i32 57475081, i32 58064905, i32 58654729, i32 59244553, i32 59834377, i32 60424201, i32 61014025, i32 61603848, i32 62128137, i32 62717960, i32 63307784, i32 63832072, i32 64356361, i32 64946184, i32 65470472, i32 65994760, i32 66519048], [64 x i32] [i32 153, i32 10158136, i32 13893674, i32 16711715, i32 19005471, i32 21037083, i32 22872089, i32 24510487, i32 26083349, i32 27459605, i32 28835859, i32 30146578, i32 31326225, i32 32505872, i32 33619984, i32 34668560, i32 35717135, i32 36700175, i32 37683214, i32 38600718, i32 39518221, i32 40435724, i32 41287692, i32 42139660, i32 42926092, i32 43712524, i32 44498956, i32 45285387, i32 46071819, i32 46792715, i32 47513611, i32 48234506, i32 48955402, i32 49610762, i32 50266122, i32 50987018, i32 51642377, i32 52297737, i32 52887562, i32 53542921, i32 54132745, i32 54788105, i32 55377929, i32 55967753, i32 56557577, i32 57147400, i32 57737224, i32 58261513, i32 58851336, i32 59375624, i32 59965448, i32 60489736, i32 61014024, i32 61538312, i32 62062600, i32 62586888, i32 63111176, i32 63635463, i32 64094216, i32 64618503, i32 65142791, i32 65601543, i32 66060296, i32 66584583]], [192 x i8] zeroinitializer }, align 32
@sama5d2_controller_formats = internal constant { [10 x %struct.isc_format], [56 x i8] } { [10 x %struct.isc_format] [%struct.isc_format { i32 842093121, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 892424769, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 1346520914, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 875713089, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 875713112, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 842093913, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 1448695129, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 1345466932, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 1497715271, i32 0, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 540029273, i32 0, i32 0, i8 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sama5d2_formats_list = internal global { [16 x %struct.isc_format], [64 x i8] } { [16 x %struct.isc_format] [%struct.isc_format { i32 825770306, i32 12289, i32 3, i8 0, i32 1073741824 }, %struct.isc_format { i32 1196573255, i32 12307, i32 2, i8 0, i32 1073741824 }, %struct.isc_format { i32 1195528775, i32 12290, i32 0, i8 0, i32 1073741824 }, %struct.isc_format { i32 1111967570, i32 12308, i32 1, i8 0, i32 1073741824 }, %struct.isc_format { i32 808535874, i32 12295, i32 1, i8 0, i32 536870912 }, %struct.isc_format { i32 808534599, i32 12302, i32 2, i8 0, i32 536870912 }, %struct.isc_format { i32 808534338, i32 12298, i32 0, i8 0, i32 536870912 }, %struct.isc_format { i32 808535890, i32 12303, i32 1, i8 0, i32 536870912 }, %struct.isc_format { i32 842090306, i32 12296, i32 3, i8 0, i32 0 }, %struct.isc_format { i32 842089031, i32 12304, i32 2, i8 0, i32 0 }, %struct.isc_format { i32 842088770, i32 12305, i32 0, i8 0, i32 0 }, %struct.isc_format { i32 842090322, i32 12306, i32 1, i8 0, i32 0 }, %struct.isc_format { i32 1497715271, i32 8193, i32 0, i8 0, i32 1073741824 }, %struct.isc_format { i32 1448695129, i32 8200, i32 0, i8 0, i32 1073741824 }, %struct.isc_format { i32 1346520914, i32 4104, i32 0, i8 0, i32 1073741824 }, %struct.isc_format { i32 540029273, i32 8202, i32 0, i8 0, i32 536870912 }], [64 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hclock\00", [25 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 467, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get hclock: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.13 = internal global ptr @atmel_isc_probe._entry.11, section ".printk_index", align 4
@atmel_isc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable hclock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.16 = internal global ptr @atmel_isc_probe._entry.14, section ".printk_index", align 4
@atmel_isc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init isc clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.19 = internal global ptr @atmel_isc_probe._entry.17, section ".printk_index", align 4
@atmel_isc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register v4l2 device.\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.22 = internal global ptr @atmel_isc_probe._entry.20, section ".printk_index", align 4
@atmel_isc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to parse device tree\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.25 = internal global ptr @atmel_isc_probe._entry.23, section ".printk_index", align 4
@atmel_isc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no subdev found\0A\00", [47 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.28 = internal global ptr @atmel_isc_probe._entry.26, section ".printk_index", align 4
@isc_async_ops = external dso_local constant %struct.v4l2_async_notifier_operations, align 4
@atmel_isc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to register async notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.31 = internal global ptr @atmel_isc_probe._entry.29, section ".printk_index", align 4
@atmel_isc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable ispck: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.34 = internal global ptr @atmel_isc_probe._entry.32, section ".printk_index", align 4
@atmel_isc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set ispck rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.37 = internal global ptr @atmel_isc_probe._entry.35, section ".printk_index", align 4
@atmel_isc_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 552, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Microchip ISC version %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_isc_probe._entry_ptr.41 = internal global ptr @atmel_isc_probe._entry.38, section ".printk_index", align 4
@isc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not parse the endpoint\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isc_parse_dt\00", [19 x i8] zeroinitializer }, align 32
@isc_parse_dt._entry_ptr = internal global ptr @isc_parse_dt._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"atmel_isc_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 629, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 633, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"atmel_isc_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 622, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"atmel_isc_dev_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 617, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 404, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 407, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 418, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"isc_sama5d2_gamma_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 285, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"sama5d2_controller_formats\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 60, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"sama5d2_formats_list\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 94, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 464, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 467, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 473, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 479, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 484, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 490, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 495, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 524, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 540, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 547, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 552, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [52 x i8] c"../drivers/media/platform/atmel/atmel-sama5d2-isc.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 347, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_atmel_isc_driver_exit, ptr @__initcall__kmod_atmel_isc__299_639_atmel_isc_driver_init6, ptr @atmel_isc_driver_exit, ptr @atmel_isc_probe._entry, ptr @atmel_isc_probe._entry.11, ptr @atmel_isc_probe._entry.14, ptr @atmel_isc_probe._entry.17, ptr @atmel_isc_probe._entry.20, ptr @atmel_isc_probe._entry.23, ptr @atmel_isc_probe._entry.26, ptr @atmel_isc_probe._entry.29, ptr @atmel_isc_probe._entry.32, ptr @atmel_isc_probe._entry.35, ptr @atmel_isc_probe._entry.38, ptr @atmel_isc_probe._entry.7, ptr @atmel_isc_probe._entry_ptr, ptr @atmel_isc_probe._entry_ptr.13, ptr @atmel_isc_probe._entry_ptr.16, ptr @atmel_isc_probe._entry_ptr.19, ptr @atmel_isc_probe._entry_ptr.22, ptr @atmel_isc_probe._entry_ptr.25, ptr @atmel_isc_probe._entry_ptr.28, ptr @atmel_isc_probe._entry_ptr.31, ptr @atmel_isc_probe._entry_ptr.34, ptr @atmel_isc_probe._entry_ptr.37, ptr @atmel_isc_probe._entry_ptr.41, ptr @atmel_isc_probe._entry_ptr.9, ptr @isc_parse_dt._entry, ptr @isc_parse_dt._entry_ptr, ptr @atmel_isc_driver, ptr @.str, ptr @atmel_isc_of_match, ptr @atmel_isc_dev_pm_ops, ptr @atmel_isc_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @isc_sama5d2_gamma_table, ptr @sama5d2_controller_formats, ptr @sama5d2_formats_list, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isc_sama5d2_gamma_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_controller_formats to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d2_formats_list to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_isc_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_isc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_isc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_isc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v4l2_epn.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #8
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver, align 4, !annotation !96
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 5280, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup149_crit_edge, label %if.end

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup149

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef nonnull @isc_regmap_config, ptr noundef nonnull @atmel_isc_probe._key, ptr noundef nonnull @.str.1) #8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %call.i, align 8
  %cmp.i276 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %5) #11
  br label %cleanup149

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup149_crit_edge, label %if.end18

if.end15.cleanup149_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end18:                                         ; preds = %if.end15
  %call.i277 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call16, ptr noundef nonnull @isc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp20 = icmp slt i32 %call.i277, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call16, i32 noundef %call.i277) #11
  br label %cleanup149

if.end25:                                         ; preds = %if.end18
  %gamma_table = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 29
  %6 = ptrtoint ptr %gamma_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @isc_sama5d2_gamma_table, ptr %gamma_table, align 8
  %gamma_max = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 30
  %7 = ptrtoint ptr %gamma_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %gamma_max, align 4
  %max_width = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 31
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2592, ptr %max_width, align 8
  %max_height = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 32
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1944, ptr %max_height, align 4
  %10 = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @isc_sama5d2_config_dpc, ptr %10, align 8
  %config_csc = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %config_csc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @isc_sama5d2_config_csc, ptr %config_csc, align 4
  %config_cbc = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 2
  %13 = ptrtoint ptr %config_cbc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @isc_sama5d2_config_cbc, ptr %config_cbc, align 8
  %config_cc = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 3
  %14 = ptrtoint ptr %config_cc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @isc_sama5d2_config_cc, ptr %config_cc, align 4
  %config_gam = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 4
  %15 = ptrtoint ptr %config_gam to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @isc_sama5d2_config_gam, ptr %config_gam, align 8
  %config_rlp = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 5
  %16 = ptrtoint ptr %config_rlp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @isc_sama5d2_config_rlp, ptr %config_rlp, align 4
  %config_ctrls = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 6
  %17 = ptrtoint ptr %config_ctrls to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @isc_sama5d2_config_ctrls, ptr %config_ctrls, align 8
  %adapt_pipeline = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 33, i32 7
  %18 = ptrtoint ptr %adapt_pipeline to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @isc_sama5d2_adapt_pipeline, ptr %adapt_pipeline, align 4
  %offsets = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 34
  %version = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 34, i32 7
  %controller_formats = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 35
  %19 = call ptr @memset(ptr %offsets, i32 0, i32 36)
  %20 = ptrtoint ptr %controller_formats to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sama5d2_controller_formats, ptr %controller_formats, align 4
  %controller_formats_size = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 37
  %21 = ptrtoint ptr %controller_formats_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %controller_formats_size, align 4
  %formats_list = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 36
  %22 = ptrtoint ptr %formats_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sama5d2_formats_list, ptr %formats_list, align 8
  %formats_list_size = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 38
  %23 = ptrtoint ptr %formats_list_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %formats_list_size, align 8
  %dcfg = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %dcfg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 544, ptr %dcfg, align 8
  %ispck_required = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %ispck_required to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ispck_required, align 4
  %call34 = tail call i32 @isc_pipeline_init(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end25.cleanup149_crit_edge

if.end25.cleanup149_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end37:                                         ; preds = %if.end25
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %hclock = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %hclock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38, ptr %hclock, align 4
  %cmp.i278 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %27) #11
  br label %cleanup149

if.end47:                                         ; preds = %if.end37
  %call.i279 = tail call i32 @clk_prepare(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool.not.i = icmp eq i32 %call.i279, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.do.end54_crit_edge

if.end47.do.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end55, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call38) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i, %if.end47.do.end54_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i279, %if.end47.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #11
  br label %cleanup149

if.end55:                                         ; preds = %if.end.i
  %call56 = tail call i32 @isc_clk_init(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call56) #11
  br label %unprepare_hclk

if.end62:                                         ; preds = %if.end55
  %v4l2_dev = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 7
  %call63 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end69, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  br label %unprepare_clk

if.end69:                                         ; preds = %if.end62
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i, align 8
  %subdev_entities.i = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %subdev_entities.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %subdev_entities.i, ptr %subdev_entities.i, align 4
  %prev.i.i = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 27, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %subdev_entities.i, ptr %prev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_epn.i) #8
  %32 = call ptr @memset(ptr %v4l2_epn.i, i32 0, i32 64)
  %call63.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %29, ptr noundef null) #8
  %tobool.not64.i = icmp eq ptr %call63.i, null
  br i1 %tobool.not64.i, label %if.end69.if.end76_crit_edge, label %cond.end.lr.ph.i

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

cond.end.lr.ph.i:                                 ; preds = %if.end69
  %bus.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_epn.i, i32 0, i32 2
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %v4l2_epn.i, i32 0, i32 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cleanup.i.cond.end.i_crit_edge, %cond.end.lr.ph.i
  %call65.i = phi ptr [ %call63.i, %cond.end.lr.ph.i ], [ %call.i281, %cleanup.i.cond.end.i_crit_edge ]
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call65.i, i32 0, i32 3
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %v4l2_epn.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #11
  br label %do.end75

if.end5.i:                                        ; preds = %cond.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #8
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.do.end75_crit_edge, label %if.end9.i

if.end5.i.do.end75_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75

if.end9.i:                                        ; preds = %if.end5.i
  %epn10.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %epn10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call65.i, ptr %epn10.i, align 4
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then13.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %pfe_cfg0.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %pfe_cfg0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %pfe_cfg0.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end14.i_crit_edge
  %and15.i = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then17.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %pfe_cfg018.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %pfe_cfg018.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pfe_cfg018.i, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %pfe_cfg018.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end19.i_crit_edge
  %and20.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then22.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %pfe_cfg023.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %pfe_cfg023.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pfe_cfg023.i, align 4
  %or24.i = or i32 %40, 4
  store i32 %or24.i, ptr %pfe_cfg023.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end25.i_crit_edge
  %41 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i280 = icmp eq i32 %42, 2
  br i1 %cmp.i280, label %if.then26.i, label %if.end25.i.if.end29.i_crit_edge

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %pfe_cfg027.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %pfe_cfg027.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pfe_cfg027.i, align 4
  %or28.i = or i32 %44, 1536
  store i32 %or28.i, ptr %pfe_cfg027.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end25.i.if.end29.i_crit_edge
  %list.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %46, ptr noundef %subdev_entities.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end29.i.cleanup.i_crit_edge

if.end29.i.cleanup.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %subdev_entities.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.isc_subdev_entity, ptr %call.i.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list.i, ptr %46, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end29.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_epn.i) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v4l2_epn.i) #8
  %51 = call ptr @memset(ptr %v4l2_epn.i, i32 0, i32 64)
  %call.i281 = call ptr @of_graph_get_next_endpoint(ptr noundef %29, ptr noundef nonnull %call65.i) #8
  %tobool.not.i282 = icmp eq ptr %call.i281, null
  br i1 %tobool.not.i282, label %cleanup.i.if.end76_crit_edge, label %cleanup.i.cond.end.i_crit_edge

cleanup.i.cond.end.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cleanup.i.if.end76_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end75:                                         ; preds = %if.end5.i.do.end75_crit_edge, %if.then4.i
  %ret.1.ph.i = phi i32 [ -22, %if.then4.i ], [ -12, %if.end5.i.do.end75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_epn.i) #8
  call void @of_node_put(ptr noundef nonnull %call65.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %unregister_v4l2_device

if.end76:                                         ; preds = %cleanup.i.if.end76_crit_edge, %if.end69.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v4l2_epn.i) #8
  %52 = ptrtoint ptr %subdev_entities.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %subdev_entities.i, align 4
  %cmp.i283.not = icmp eq ptr %53, %subdev_entities.i
  br i1 %cmp.i283.not, label %do.end82, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end76
  %flags.i = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 8, i32 17
  br label %for.cond

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %unregister_v4l2_device

for.cond:                                         ; preds = %if.end108.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %if.end108.for.cond_crit_edge ], [ %subdev_entities.i, %for.cond.preheader ]
  %54 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp87.not = icmp eq ptr %.pn, %subdev_entities.i
  br i1 %cmp87.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %epn = getelementptr i8, ptr %.pn, i32 -56
  %55 = ptrtoint ptr %epn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %epn, align 4
  %tobool89.not = icmp eq ptr %56, null
  %fwnode90 = getelementptr inbounds %struct.device_node, ptr %56, i32 0, i32 3
  %spec.select = select i1 %tobool89.not, ptr null, ptr %fwnode90
  %notifier = getelementptr i8, ptr %.pn, i32 -52
  call void @v4l2_async_nf_init(ptr noundef %notifier) #8
  %call92 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %spec.select, i32 noundef 28) #8
  %57 = ptrtoint ptr %epn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %epn, align 4
  call void @of_node_put(ptr noundef %58) #8
  %59 = ptrtoint ptr %epn to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %epn, align 4
  %cmp.i284 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then96, label %if.end98

if.then96:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call92 to i32
  br label %cleanup_subdev

if.end98:                                         ; preds = %for.body
  %61 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @isc_async_ops, ptr %notifier, align 4
  %call102 = call i32 @v4l2_async_nf_register(ptr noundef %v4l2_dev, ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end108, label %do.end107

do.end107:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #11
  br label %cleanup_subdev

if.end108:                                        ; preds = %if.end98
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %63, 1
  %tobool110.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool110.not, label %if.end108.for.cond_crit_edge, label %if.end108.for.end_crit_edge

if.end108.for.end_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end108.for.cond_crit_edge:                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %if.end108.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call.i285 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i286 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 1) #8
  %clk = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk, align 4
  %ispck = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 2
  %66 = ptrtoint ptr %ispck to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %ispck, align 8
  %call122 = call fastcc i32 @clk_prepare_enable(ptr noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end128, label %do.end127

do.end127:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call122) #11
  br label %cleanup_subdev

if.end128:                                        ; preds = %for.end
  %67 = ptrtoint ptr %ispck to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ispck, align 8
  %69 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hclock, align 4
  %call131 = call i32 @clk_get_rate(ptr noundef %70) #8
  %call132 = call i32 @clk_set_rate(ptr noundef %68, i32 noundef %call131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end138, label %do.end137

do.end137:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call132) #11
  br label %unprepare_clk

if.end138:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 8
  %73 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %version, align 4
  %add = add i32 %74, 1036
  %call142 = call i32 @regmap_read(ptr noundef %72, i32 noundef %add, ptr noundef nonnull %ver) #8
  %75 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ver, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %76) #11
  br label %cleanup149

unprepare_clk:                                    ; preds = %do.end137, %do.end68
  %ret.1 = phi i32 [ %call63, %do.end68 ], [ %call132, %do.end137 ]
  %ispck146 = getelementptr inbounds %struct.isc_device, ptr %call.i, i32 0, i32 2
  %77 = ptrtoint ptr %ispck146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ispck146, align 8
  call void @clk_disable(ptr noundef %78) #8
  call void @clk_unprepare(ptr noundef %78) #8
  br label %cleanup_subdev

cleanup_subdev:                                   ; preds = %unprepare_clk, %do.end127, %do.end107, %if.then96
  %ret.2 = phi i32 [ %ret.1, %unprepare_clk ], [ %call122, %do.end127 ], [ %call102, %do.end107 ], [ %60, %if.then96 ]
  call void @isc_subdev_cleanup(ptr noundef nonnull %call.i) #8
  br label %unregister_v4l2_device

unregister_v4l2_device:                           ; preds = %cleanup_subdev, %do.end82, %do.end75
  %ret.3 = phi i32 [ %ret.2, %cleanup_subdev ], [ %ret.1.ph.i, %do.end75 ], [ -19, %do.end82 ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %unprepare_hclk

unprepare_hclk:                                   ; preds = %unregister_v4l2_device, %do.end61
  %ret.4 = phi i32 [ %call56, %do.end61 ], [ %ret.3, %unregister_v4l2_device ]
  %79 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hclock, align 4
  call void @clk_disable(ptr noundef %80) #8
  call void @clk_unprepare(ptr noundef %80) #8
  call void @isc_clk_cleanup(ptr noundef nonnull %call.i) #8
  br label %cleanup149

cleanup149:                                       ; preds = %unprepare_hclk, %if.end138, %do.end54, %if.then41, %if.end25.cleanup149_crit_edge, %do.end24, %if.end15.cleanup149_crit_edge, %if.then12, %if.then6, %entry.cleanup149_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then12 ], [ %call.i277, %do.end24 ], [ %27, %if.then41 ], [ %retval.0.i.ph, %do.end54 ], [ %ret.4, %unprepare_hclk ], [ 0, %if.end138 ], [ -12, %entry.cleanup149_crit_edge ], [ %call16, %if.end15.cleanup149_crit_edge ], [ %call34, %if.end25.cleanup149_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_isc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @isc_subdev_cleanup(ptr noundef %1) #8
  %v4l2_dev = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %ispck = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ispck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ispck, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %hclock = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclock, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  tail call void @isc_clk_cleanup(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isc_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @isc_sama5d2_config_dpc(ptr nocapture noundef %isc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isc_sama5d2_config_csc(ptr nocapture noundef readonly %isc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isc, align 8
  %offsets = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 34
  %2 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offsets, align 8
  %add = add i32 %3, 924
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add, i32 noundef 8454210) #8
  %4 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets, align 8
  %add4 = add i32 %5, 928
  %call5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add4, i32 noundef 1048601) #8
  %6 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offsets, align 8
  %add8 = add i32 %7, 932
  %call9 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add8, i32 noundef 263589850) #8
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offsets, align 8
  %add12 = add i32 %9, 936
  %call13 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add12, i32 noundef 8388720) #8
  %10 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offsets, align 8
  %add16 = add i32 %11, 940
  %call17 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add16, i32 noundef 262275184) #8
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets, align 8
  %add20 = add i32 %13, 944
  %call21 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add20, i32 noundef 8392686) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isc_sama5d2_config_cbc(ptr nocapture noundef readonly %isc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isc, align 8
  %cbc = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 34, i32 1
  %2 = ptrtoint ptr %cbc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cbc, align 4
  %add = add i32 %3, 956
  %brightness = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add, i32 noundef %5) #8
  %6 = ptrtoint ptr %cbc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cbc, align 4
  %add4 = add i32 %7, 960
  %contrast = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %contrast, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add4, i32 noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isc_sama5d2_config_cc(ptr nocapture noundef readonly %isc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isc, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 124, i32 noundef 256) #8
  %call2 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 128, i32 noundef 0) #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 132, i32 noundef 16777216) #8
  %call4 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 136, i32 noundef 0) #8
  %call5 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 140, i32 noundef 0) #8
  %call6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 144, i32 noundef 256) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @isc_sama5d2_config_gam(ptr nocapture noundef %isc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isc_sama5d2_config_rlp(ptr nocapture noundef readonly %isc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isc, align 8
  %rlp_cfg_mode = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %rlp_cfg_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlp_cfg_mode, align 4
  %and = and i32 %3, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %cmp = icmp eq i32 %and, 13
  %and2 = and i32 %3, -16
  %or = or i32 %and2, 11
  %rlp_mode.0 = select i1 %cmp, i32 %or, i32 %3
  %rlp = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 34, i32 4
  %4 = ptrtoint ptr %rlp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rlp, align 8
  %add = add i32 %5, 976
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 15, i32 noundef %rlp_mode.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isc_sama5d2_config_ctrls(ptr noundef %isc, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 21
  %contrast = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %contrast, align 4
  %call = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls1, ptr noundef %ops, i32 noundef 9963777, i64 noundef -2048, i64 noundef 2047, i64 noundef 1, i64 noundef 256) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @isc_sama5d2_adapt_pipeline(ptr nocapture noundef %isc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_pipeline = getelementptr inbounds %struct.isc_device, ptr %isc, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %bits_pipeline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_pipeline, align 8
  %and = and i32 %1, 31736
  store i32 %and, ptr %bits_pipeline, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isc_pipeline_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isc_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @isc_subdev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isc_clk_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ispck = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ispck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ispck, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %hclock = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclock, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hclock = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %ispck = getelementptr inbounds %struct.isc_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ispck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ispck, align 8
  %call.i13 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.i17, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i17:                                       ; preds = %if.end
  %call1.i15 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool2.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool2.not.i16, label %if.end.i17.cleanup_crit_edge, label %if.then3.i18

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i18, %if.end.if.then4_crit_edge
  %retval.0.i19.ph = phi i32 [ %call1.i15, %if.then3.i18 ], [ %call.i13, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclock, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then4 ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i19.ph, %if.then4 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i17.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_atmel_isc__299_639_atmel_isc_driver_init6, !1, !"__initcall__kmod_atmel_isc__299_639_atmel_isc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 639, i32 1}
!2 = !{ptr @__exitcall_atmel_isc_driver_exit, !1, !"__exitcall_atmel_isc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 641, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 642, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 643, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 633, i32 12}
!12 = !{ptr @atmel_isc_driver, !13, !"atmel_isc_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 629, i32 31}
!14 = !{ptr @atmel_isc_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 404, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 407, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atmel_isc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @atmel_isc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 418, i32 3}
!27 = !{ptr @atmel_isc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @atmel_isc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 464, i32 34}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 467, i32 3}
!33 = !{ptr @atmel_isc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @atmel_isc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 473, i32 3}
!37 = !{ptr @atmel_isc_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @atmel_isc_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 479, i32 3}
!41 = !{ptr @atmel_isc_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @atmel_isc_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 484, i32 3}
!45 = !{ptr @atmel_isc_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @atmel_isc_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 490, i32 3}
!49 = !{ptr @atmel_isc_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @atmel_isc_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 495, i32 3}
!53 = !{ptr @atmel_isc_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @atmel_isc_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 524, i32 4}
!57 = !{ptr @atmel_isc_probe._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @atmel_isc_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 540, i32 3}
!61 = !{ptr @atmel_isc_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @atmel_isc_probe._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 547, i32 3}
!65 = !{ptr @atmel_isc_probe._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @atmel_isc_probe._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 552, i32 2}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @atmel_isc_probe._entry.38, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @atmel_isc_probe._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @isc_sama5d2_gamma_table, !73, !"isc_sama5d2_gamma_table", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 285, i32 18}
!74 = !{ptr @sama5d2_controller_formats, !75, !"sama5d2_controller_formats", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 60, i32 32}
!76 = !{ptr @sama5d2_formats_list, !77, !"sama5d2_formats_list", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 94, i32 26}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 347, i32 4}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @isc_parse_dt._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @isc_parse_dt._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @atmel_isc_of_match, !84, !"atmel_isc_of_match", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 622, i32 34}
!85 = !{ptr @atmel_isc_dev_pm_ops, !86, !"atmel_isc_dev_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/atmel/atmel-sama5d2-isc.c", i32 617, i32 32}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
