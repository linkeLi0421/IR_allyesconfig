; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-gemtek.c_pt.bc'
source_filename = "../drivers/media/radio/radio-gemtek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.radio_isa_driver = type { %struct.isa_driver, ptr, ptr, ptr, i8, ptr, i32, i32, ptr, i8, i32 }
%struct.isa_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radio_isa_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gemtek = type { %struct.radio_isa_card, i8, i32 }
%struct.radio_isa_card = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.mutex, ptr, %struct.anon.117, i32, i8, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.117 = type { ptr, ptr }

@__UNIQUE_ID_author292 = internal constant [66 x i8] c"radio_gemtek.author=Jonas Munsin, Pekka Sepp\C3\A4nen <pexu@kapsi.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [61 x i8] c"radio_gemtek.description=A driver for the GemTek Radio card.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"radio_gemtek.file=drivers/media/radio/radio-gemtek\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [25 x i8] c"radio_gemtek.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [27 x i8] c"radio_gemtek.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio_gemtek\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_probe = internal constant [19 x i8] c"radio_gemtek.probe\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@probe = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_probe = internal constant %struct.kernel_param { ptr @__param_str_probe, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @probe } }, section "__param", align 4
@__UNIQUE_ID_probetype297 = internal constant [33 x i8] c"radio_gemtek.parmtype=probe:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_probe298 = internal constant [57 x i8] c"radio_gemtek.parm=probe:Enable automatic device probing.\00", section ".modinfo", align 1
@__param_str_hardmute = internal constant [22 x i8] c"radio_gemtek.hardmute\00", align 1
@hardmute = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_hardmute = internal constant %struct.kernel_param { ptr @__param_str_hardmute, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hardmute } }, section "__param", align 4
@__UNIQUE_ID_hardmutetype299 = internal constant [36 x i8] c"radio_gemtek.parmtype=hardmute:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_hardmute300 = internal constant [95 x i8] c"radio_gemtek.parm=hardmute:Enable 'hard muting' by shutting down PLL, may reduce static noise.\00", section ".modinfo", align 1
@__param_str_io = internal constant [16 x i8] c"radio_gemtek.io\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_io = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @io }, align 4
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_io } }, section "__param", align 4
@__UNIQUE_ID_iotype301 = internal constant [38 x i8] c"radio_gemtek.parmtype=io:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_io302 = internal constant [251 x i8] c"radio_gemtek.parm=io:Force I/O ports for the GemTek Radio card if automatic probing is disabled or fails. The most common I/O ports are: 0x20c 0x30c, 0x24c or 0x34c (0x20c, 0x248 and 0x28c have been reported to work for the combined sound/radiocard).\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [22 x i8] c"radio_gemtek.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype303 = internal constant [44 x i8] c"radio_gemtek.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr304 = internal constant [48 x i8] c"radio_gemtek.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@gemtek_driver = internal global { %struct.radio_isa_driver, [48 x i8] } { %struct.radio_isa_driver { %struct.isa_driver { ptr @radio_isa_match, ptr @radio_isa_probe, ptr @radio_isa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null }, ptr @gemtek_ops, ptr @io, ptr @radio_nr, i8 0, ptr @gemtek_ioports, i32 6, i32 1, ptr @.str.4, i8 1, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_radio_gemtek__305_339_gemtek_init6 = internal global ptr @gemtek_init, section ".initcall6.init", align 4
@__exitcall_gemtek_exit = internal global ptr @gemtek_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 844, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio-gemtek\00", [19 x i8] zeroinitializer }, align 32
@gemtek_ops = internal constant { %struct.radio_isa_ops, [32 x i8] } { %struct.radio_isa_ops { ptr @gemtek_alloc, ptr @gemtek_probe, ptr null, ptr @gemtek_s_mute_volume, ptr @gemtek_s_frequency, ptr null, ptr @gemtek_g_rxsubchans, ptr null }, [32 x i8] zeroinitializer }, align 32
@gemtek_ioports = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 524, i32 780, i32 588, i32 844, i32 584, i32 652], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GemTek Radio\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 46, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 61, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"hardmute\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 62, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"gemtek_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 294, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 63, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 65, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 300, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"gemtek_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 274, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"gemtek_ioports\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 282, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [38 x i8] c"../drivers/media/radio/radio-gemtek.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 316, i32 10 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_hardmute300, ptr @__UNIQUE_ID_hardmutetype299, ptr @__UNIQUE_ID_io302, ptr @__UNIQUE_ID_iotype301, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_probe298, ptr @__UNIQUE_ID_probetype297, ptr @__UNIQUE_ID_radio_nr304, ptr @__UNIQUE_ID_radio_nrtype303, ptr @__UNIQUE_ID_version296, ptr @__exitcall_gemtek_exit, ptr @__initcall__kmod_radio_gemtek__305_339_gemtek_init6, ptr @__modver_attr, ptr @__param_hardmute, ptr @__param_io, ptr @__param_probe, ptr @__param_radio_nr, ptr @gemtek_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @probe, ptr @hardmute, ptr @gemtek_driver, ptr @io, ptr @radio_nr, ptr @.str.3, ptr @gemtek_ops, ptr @gemtek_ioports, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hardmute to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemtek_driver to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemtek_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemtek_ioports to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gemtek_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr @hardmute, align 1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gemtek_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @probe, align 1, !range !70
  store i8 %0, ptr getelementptr inbounds (%struct.radio_isa_driver, ptr @gemtek_driver, i32 0, i32 4), align 4
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radio_isa_match(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radio_isa_probe(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @radio_isa_remove(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @gemtek_alloc() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1800) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %muted = getelementptr inbounds %struct.gemtek, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %muted to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %muted, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gemtek_probe(ptr nocapture noundef readnone %isa, i32 noundef %io) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %io, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 1073740) #5
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %4 = and i8 %3, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %4)
  %cmp6.not = icmp eq i8 %4, 55
  br i1 %cmp6.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %7 = and i8 %6, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %7)
  %cmp6.not.1 = icmp eq i8 %7, 87
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 4) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #5
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %10 = and i8 %9, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -105, i8 %10)
  %cmp6.not.2 = icmp eq i8 %10, -105
  br i1 %cmp6.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %11 = lshr i8 %1, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %11) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #5
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp23 = phi i1 [ true, %for.cond.2 ], [ false, %for.cond.1.cleanup_crit_edge ], [ false, %for.cond.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %cmp23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemtek_s_mute_volume(ptr nocapture noundef %isa, i1 noundef zeroext %mute, i32 noundef %vol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %mute to i8
  %muted = getelementptr inbounds %struct.gemtek, ptr %isa, i32 0, i32 1
  %0 = ptrtoint ptr %muted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %muted, align 8
  %1 = load i8, ptr @hardmute, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  br i1 %mute, label %if.end, label %gemtek_s_frequency.exit

gemtek_s_frequency.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %freq = getelementptr inbounds %struct.radio_isa_card, ptr %isa, i32 0, i32 9
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 8
  %bu2614data.i = getelementptr inbounds %struct.gemtek, ptr %isa, i32 0, i32 2
  %4 = ptrtoint ptr %bu2614data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bu2614data.i, align 4
  %or25.i = and i32 %5, 544735232
  %shl.i.i = shl i32 %3, 8
  %add1.i.i = add i32 %shl.i.i, 43103006
  %div.i.i = udiv i32 %add1.i.i, 26173
  %and28.i = or i32 %or25.i, %div.i.i
  %or29.i = or i32 %and28.i, 1090519040
  store i32 %or29.i, ptr %bu2614data.i, align 4
  tail call fastcc void @gemtek_bu2614_transmit(ptr noundef %isa) #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %bu2614data = getelementptr inbounds %struct.gemtek, ptr %isa, i32 0, i32 2
  %6 = ptrtoint ptr %bu2614data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bu2614data, align 4
  %and27 = and i32 %7, 544735232
  %or28 = or i32 %and27, 117440512
  store i32 %or28, ptr %bu2614data, align 4
  tail call fastcc void @gemtek_bu2614_transmit(ptr noundef %isa)
  br label %cleanup

if.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %io = getelementptr inbounds %struct.radio_isa_card, ptr %isa, i32 0, i32 7
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io, align 8
  %and.i = and i32 %9, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %12 = lshr i8 %11, 5
  %cond = select i1 %mute, i8 16, i8 0
  %or38 = or i8 %12, %cond
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and.i65 = and i32 %14, 1048575
  %add.i66 = or i32 %and.i65, -18874368
  %15 = inttoptr i32 %add.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %or38) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end, %gemtek_s_frequency.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemtek_s_frequency(ptr nocapture noundef %isa, i32 noundef %freq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @hardmute, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %muted = getelementptr inbounds %struct.gemtek, ptr %isa, i32 0, i32 1
  %1 = ptrtoint ptr %muted to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %muted, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bu2614data = getelementptr inbounds %struct.gemtek, ptr %isa, i32 0, i32 2
  %3 = ptrtoint ptr %bu2614data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bu2614data, align 4
  %or25 = and i32 %4, 544735232
  %shl.i = shl i32 %freq, 8
  %add1.i = add i32 %shl.i, 43103006
  %div.i = udiv i32 %add1.i, 26173
  %and28 = or i32 %div.i, %or25
  %or29 = or i32 %and28, 1090519040
  store i32 %or29, ptr %bu2614data, align 4
  tail call fastcc void @gemtek_bu2614_transmit(ptr noundef %isa)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemtek_g_rxsubchans(ptr nocapture noundef readonly %isa) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr inbounds %struct.radio_isa_card, ptr %isa, i32 0, i32 7
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io, align 8
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gemtek_bu2614_transmit(ptr nocapture noundef readonly %gt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %muted = getelementptr inbounds %struct.gemtek, ptr %gt, i32 0, i32 1
  %0 = ptrtoint ptr %muted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %muted, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %2 = trunc i32 %cond to i8
  %conv = or i8 %2, 7
  %io = getelementptr inbounds %struct.radio_isa_card, ptr %gt, i32 0, i32 7
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and.i = and i32 %4, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 16106100) #5
  %bu2614data = getelementptr inbounds %struct.gemtek, ptr %gt, i32 0, i32 2
  %7 = ptrtoint ptr %bu2614data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bu2614data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %q.038 = phi i32 [ %8, %entry ], [ %shr, %for.body.for.body_crit_edge ]
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %and = shl i32 %q.038, 1
  %9 = and i32 %and, 2
  %or = or i32 %9, %cond
  %10 = trunc i32 %or to i8
  %conv9 = or i8 %10, 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and.i31 = and i32 %12, 1048575
  %add.i32 = or i32 %and.i31, -18874368
  %13 = inttoptr i32 %add.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv9) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %conv14 = or i8 %10, 5
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and.i33 = and i32 %16, 1048575
  %add.i34 = or i32 %and.i33, -18874368
  %17 = inttoptr i32 %add.i34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv14) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #5
  %inc = add nuw nsw i32 %i.037, 1
  %shr = ashr i32 %q.038, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv18 = or i8 %2, 3
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %and.i35 = and i32 %20, 1048575
  %add.i36 = or i32 %and.i35, -18874368
  %21 = inttoptr i32 %add.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv18) #5, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-gemtek.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-gemtek.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-gemtek.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-gemtek.c", i32 46, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_probe, !14, !"__param_probe", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-gemtek.c", i32 67, i32 1}
!15 = !{ptr @__UNIQUE_ID_probetype297, !14, !"__UNIQUE_ID_probetype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_probe298, !17, !"__UNIQUE_ID_probe298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-gemtek.c", i32 68, i32 1}
!18 = !{ptr @__param_hardmute, !19, !"__param_hardmute", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-gemtek.c", i32 70, i32 1}
!20 = !{ptr @__UNIQUE_ID_hardmutetype299, !19, !"__UNIQUE_ID_hardmutetype299", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_hardmute300, !22, !"__UNIQUE_ID_hardmute300", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-gemtek.c", i32 71, i32 1}
!23 = !{ptr @__param_io, !24, !"__param_io", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-gemtek.c", i32 73, i32 1}
!25 = !{ptr @__UNIQUE_ID_iotype301, !24, !"__UNIQUE_ID_iotype301", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_io302, !27, !"__UNIQUE_ID_io302", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-gemtek.c", i32 74, i32 1}
!28 = !{ptr @__param_radio_nr, !29, !"__param_radio_nr", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-gemtek.c", i32 76, i32 1}
!30 = !{ptr @__UNIQUE_ID_radio_nrtype303, !29, !"__UNIQUE_ID_radio_nrtype303", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_radio_nr304, !32, !"__UNIQUE_ID_radio_nr304", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/radio-gemtek.c", i32 77, i32 1}
!33 = !{ptr @__initcall__kmod_radio_gemtek__305_339_gemtek_init6, !34, !"__initcall__kmod_radio_gemtek__305_339_gemtek_init6", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-gemtek.c", i32 339, i32 1}
!35 = !{ptr @__exitcall_gemtek_exit, !36, !"__exitcall_gemtek_exit", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-gemtek.c", i32 340, i32 1}
!37 = !{ptr @hardmute, !38, !"hardmute", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-gemtek.c", i32 62, i32 13}
!39 = !{ptr @__param_str_probe, !14, !"__param_str_probe", i1 false, i1 false}
!40 = !{ptr @probe, !41, !"probe", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-gemtek.c", i32 61, i32 13}
!42 = !{ptr @__param_str_hardmute, !19, !"__param_str_hardmute", i1 false, i1 false}
!43 = !{ptr @__param_str_io, !24, !"__param_str_io", i1 false, i1 false}
!44 = !{ptr @__param_arr_io, !24, !"__param_arr_io", i1 false, i1 false}
!45 = !{ptr @io, !46, !"io", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-gemtek.c", i32 63, i32 12}
!47 = !{ptr @__param_str_radio_nr, !29, !"__param_str_radio_nr", i1 false, i1 false}
!48 = !{ptr @__param_arr_radio_nr, !29, !"__param_arr_radio_nr", i1 false, i1 false}
!49 = !{ptr @radio_nr, !50, !"radio_nr", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/radio-gemtek.c", i32 65, i32 12}
!51 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/radio-gemtek.c", i32 300, i32 12}
!53 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/radio-gemtek.c", i32 316, i32 10}
!55 = !{ptr @gemtek_driver, !56, !"gemtek_driver", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/radio-gemtek.c", i32 294, i32 32}
!57 = !{ptr @gemtek_ops, !58, !"gemtek_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/radio-gemtek.c", i32 274, i32 35}
!59 = !{ptr @gemtek_ioports, !60, !"gemtek_ioports", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-gemtek.c", i32 282, i32 18}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
!71 = !{i64 4770217}
!72 = !{i64 2152303893}
!73 = !{i64 2152305878}
!74 = !{i64 4769822}
