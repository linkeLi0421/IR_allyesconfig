; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/gl860/gl860-mi1320.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/gl860/gl860-mi1320.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.validx = type { i16, i16 }
%struct.sd = type { %struct.gspca_dev, %struct.sd_gl860, %struct.sd_gl860, %struct.sd_gl860, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, i8 }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd_gl860 = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8 }

@tbl_init_at_startup = internal global { [8 x %struct.validx], [32 x i8] } { [8 x %struct.validx] [%struct.validx zeroinitializer, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 35, i16 -1 }, %struct.validx { i16 8, i16 192 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 1, i16 194 }, %struct.validx { i16 32, i16 6 }, %struct.validx { i16 106, i16 13 }], [32 x i8] zeroinitializer }, align 32
@dat_common00 = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\00\01\07j\06c\0Dj\C0\00\10\10\C1\03\C2B\D8\04X\00\04\02\00", [41 x i8] zeroinitializer }, align 32
@dat_common01 = internal global { [33 x i8], [63 x i8] } { [33 x i8] c"\0D\00\F1\0B\0D\00\F1\085\00\F1\22h\00\F1]\F0\00\F1\01\06p\F1\0E\F0\00\F1\02\DD\18\F1\E0\00", [63 x i8] zeroinitializer }, align 32
@tbl_common = internal global { [25 x %struct.validx], [60 x i8] } { [25 x %struct.validx] [%struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17839, i16 102 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17915, i16 103 }, %struct.validx { i16 -17915, i16 241 }, %struct.validx { i16 -17760, i16 101 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17670, i16 40 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17919, i16 241 }, %struct.validx { i16 -17680, i16 6 }, %struct.validx { i16 -17906, i16 241 }, %struct.validx { i16 -17808, i16 6 }, %struct.validx { i16 -17906, i16 241 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 -17804, i16 6 }, %struct.validx { i16 -17906, i16 241 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 97, i16 0 }, %struct.validx { i16 104, i16 13 }], [60 x i8] zeroinitializer }, align 32
@dat_common02 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\05\01\F1\84\06\00\F1D\07\00\F1\BE\08\00\F1\1E \01\F1\03!\84\F1\00\22\0D\F1\0F$\80\F1\004\18\F1-5\00\F1\22C\83\F1\83Y\00\F1\FF\00", [47 x i8] zeroinitializer }, align 32
@dat_common03 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\F0\00\F1\029\06\F1\8C:\06\F1\8C;\03\F1\DA<\05\F10W\01\F1\0CX\01\F1BY\01\F1\0CZ\01\F1B\\\13\F1\0E]\17\F1\12d\1E\F1\1C\00", [47 x i8] zeroinitializer }, align 32
@dat_common04 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\F0\00\F1\02$_\F1 (\EA\F1\02_A\F1C\00", [47 x i8] zeroinitializer }, align 32
@dat_common05 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\02\00\F1\EE\03)\F1\1A\04\02\F1\A4\09\00\F1h\0A\00\F1*\0B\00\F1\04\0C\00\F1\93\0D\00\F1\82\0E\00\F1@\0F\00\F1_\10\00\F1N\11\00\F1[\00", [47 x i8] zeroinitializer }, align 32
@dat_common06 = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\15\00\F1\C9\16\00\F1^\17\00\F1\9D\18\00\F1\06\19\00\F1\89\1A\00\F1\12\1B\00\F1\A1\1C\00\F1\E4\1D\00\F1z\1E\00\F1d\F6\00\F1_\00", [51 x i8] zeroinitializer }, align 32
@dat_common07 = internal global { [53 x i8], [43 x i8] } { [53 x i8] c"\F0\00\F1\01S\09\F1\03T=\F1\1CU\99\F1rV\C1\F1\B1W\D8\F1\CEX\E0\F1\00\DC\0A\F1\03\DDE\F1 \DE\AE\F1\82\DF\DC\F1\C9\E0\F6\F1\EA\E1\FF\F1\00\00", [43 x i8] zeroinitializer }, align 32
@dat_common08 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\F0\00\F1\01\80\00\F1\06\81\F6\F1\08\82\FB\F1\F7\83\00\F1\FE\B6\07\F1\03\B7\18\F1\0C\84\FB\F1\06\85\FB\F1\F9\86\00\F1\FF\B8\07\F1\04\B9\16\F1\0A\00", [47 x i8] zeroinitializer }, align 32
@dat_common09 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\87\FA\F1\05\88\FC\F1\F9\89\00\F1\FF\BA\06\F1\03\BB\17\F1\09\8A\E8\F1\14\8B\F7\F1\F0\8C\FD\F1\FA\8D\00\F1\00\BC\05\F1\01\BD\0C\F1\08\BE\00\F1\14\00", [47 x i8] zeroinitializer }, align 32
@dat_common10 = internal global { [57 x i8], [39 x i8] } { [57 x i8] c"\8E\EA\F1\13\8F\F7\F1\F2\90\FD\F1\FA\91\00\F1\00\BF\05\F1\01\C0\0A\F1\08\C1\00\F1\0C\92\ED\F1\0F\93\F9\F1\F4\94\FE\F1\FB\95\00\F1\00\C2\04\F1\01\C3\0A\F1\07\C4\00\F1\10\00", [39 x i8] zeroinitializer }, align 32
@dat_common11 = internal global { [41 x i8], [55 x i8] } { [41 x i8] c"\F0\00\F1\01\05\00\F1\06%\00\F1U4\10\F1\105\F0\F1\10:\02\F1\03;\04\F1*\9BC\F1\00\A4\03\F1\C0\A7\02\F1\81\00", [55 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_common = internal global { [7 x %struct.validx], [36 x i8] } { [7 x %struct.validx] [%struct.validx { i16 16, i16 16 }, %struct.validx { i16 3, i16 193 }, %struct.validx { i16 66, i16 194 }, %struct.validx { i16 64, i16 0 }, %struct.validx { i16 106, i16 7 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 99, i16 6 }], [36 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_1280 = internal global { [8 x %struct.validx], [32 x i8] } { [8 x %struct.validx] [%struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17830, i16 102 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17915, i16 103 }, %struct.validx { i16 -17915, i16 241 }, %struct.validx { i16 -17888, i16 101 }, %struct.validx { i16 -17920, i16 241 }], [32 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_800 = internal global { [8 x %struct.validx], [32 x i8] } { [8 x %struct.validx] [%struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17830, i16 102 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17915, i16 103 }, %struct.validx { i16 -17915, i16 241 }, %struct.validx { i16 -17888, i16 101 }, %struct.validx { i16 -17920, i16 241 }], [32 x i8] zeroinitializer }, align 32
@tbl_sensor_settings_640 = internal global { [10 x %struct.validx], [56 x i8] } { [10 x %struct.validx] [%struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17760, i16 101 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17839, i16 102 }, %struct.validx { i16 -17918, i16 241 }, %struct.validx { i16 -17915, i16 103 }, %struct.validx { i16 -17915, i16 241 }, %struct.validx { i16 -17888, i16 101 }, %struct.validx { i16 -17920, i16 241 }], [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\0D\80\F1\08\03\04\F1\00\04\05\F1\02\05\00\F1\F1\06\00\F1\0D \01\F1\00!\84\F1\00\0D\00\F1\08\F0\00\F1\014\00\F1\00\9BC\F1\00\A6\05\F1\00\A9\04\F1\00\A1\05\F1\00\A4\04\F1\00\AE\0A\F1\08", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"\F0\00\F1\02:\05\F1\F1<\05\F1\F1Y\01\F1GZ\01\F1\88\\\0A\F1\06]\0E\F1\0Ad^\F1\1C\D2\00\F1\CF\CB\00\F1\01", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\D3\02\D4(\D5\01\D0\02\D1\18\D2\C1", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\0D\80\F1\08\03\03\F1\C0\04\05\F1\02\05\00\F1\F1\06\00\F1\0D \01\F1\00!\84\F1\00\0D\00\F1\08\F0\00\F1\014\00\F1\00\9BC\F1\00\A6\05\F1\00\A9\03\F1\C0\A1\03\F1 \A4\02\F1Z\AE\0A\F1\08", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"\F0\00\F1\02:\05\F1\F1<\05\F1\F1Y\01\F1GZ\01\F1\88\\\0A\F1\06]\0E\F1\0Ad^\F1\1C\D2\00\F1\CF\CB\00\F1\01", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\D3\02\D4\18\D5!\D0\02\D1\10\D2Y", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [60 x i8], [36 x i8] } { [60 x i8] c"\0D\80\F1\08\03\04\F1\04\04\05\F1\02\07\01\F1|\08\00\F1\0E!\80\F1\00\0D\00\F1\08\F0\00\F1\014\10\F1\10:C\F1\00\A6\05\F1\02\A9\04\F1\04\A7\02\F1\81\AA\01\F1\E2\AE\0C\F1\09", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"\F0\00\F1\029\03\F1\FC;\04\F1\04W\01\F1\B6X\02\F1\0D\\\1F\F1\19]$\F1\1Ed^\F1\1C\D2\00\F1\00\CB\00\F1\01", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\D3\02\D4\10\D5\81\D0\02\D1\08\D2\E1", [20 x i8] zeroinitializer }, align 32
@dat_wbalNL = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\F0\00\F1\01\05\00\F1\06;\04\F1*G\10\F1\10\9D<\F1\AE\AF\10\F1\00\F0\00\F1\02/\91\F1 \9C\91\F1 7\03\F1\00\9D\C5\F1\0F\F0\00\F1\00\00", [47 x i8] zeroinitializer }, align 32
@dat_wbalLL = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\F0\00\F1\01\05\00\F1\0C;\04\F1*G@\F1@\9D \F1\AE\AF\10\F1\00\F0\00\F1\02/\D1\F1\00\9C\D1\F1\007\03\F1\00\9D\C5\F1?\F0\00\F1\00\00", [47 x i8] zeroinitializer }, align 32
@dat_wbalBL = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\F0\00\F1\01\05\00\F1\06G\10\F10\9D<\F1\AE\AF\10\F1\00\F0\00\F1\02/\91\F1 \9C\91\F1 7\03\F1\00\9D\C5\F1/\F0\00\F1\00\00", [51 x i8] zeroinitializer }, align 32
@tbl_bright = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 8, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112], [60 x i8] zeroinitializer }, align 32
@tbl_sat = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 37, i32 29, i32 21, i32 13, i32 5, i32 77, i32 85, i32 93, i32 45], [60 x i8] zeroinitializer }, align 32
@tbl_backlight = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 14, i32 6, i32 2], [20 x i8] zeroinitializer }, align 32
@dat_hvflip1 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\F0\00\F1\00", [28 x i8] zeroinitializer }, align 32
@tbl_cntr1 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 224, i32 240], [52 x i8] zeroinitializer }, align 32
@tbl_cntr2 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 112, i32 104, i32 96, i32 88, i32 80, i32 72, i32 64, i32 56, i32 48, i32 32, i32 16], [52 x i8] zeroinitializer }, align 32
@tbl_post_unset_alt = internal global { [6 x %struct.validx], [40 x i8] } { [6 x %struct.validx] [%struct.validx { i16 -17920, i16 240 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 -17760, i16 101 }, %struct.validx { i16 -17920, i16 241 }, %struct.validx { i16 97, i16 0 }, %struct.validx { i16 104, i16 13 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"tbl_init_at_startup\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 23, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"dat_common00\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 144, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"dat_common01\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 147, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"tbl_common\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 10, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"dat_common02\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 150, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"dat_common03\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 154, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"dat_common04\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 158, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"dat_common05\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 160, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"dat_common06\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 164, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"dat_common07\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 168, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"dat_common08\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 173, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"dat_common09\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 177, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"dat_common10\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 181, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"dat_common11\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 186, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"tbl_sensor_settings_common\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 30, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"tbl_sensor_settings_1280\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 34, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"tbl_sensor_settings_800\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 38, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"tbl_sensor_settings_640\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 42, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"dat_wbalNL\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 127, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"dat_wbalLL\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 132, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"dat_wbalBL\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 137, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"tbl_bright\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 119, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"tbl_sat\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 118, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"tbl_backlight\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 120, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"dat_hvflip1\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 142, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"tbl_cntr1\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 122, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"tbl_cntr2\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 124, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"tbl_post_unset_alt\00", align 1
@___asan_gen_.101 = private constant [48 x i8] c"../drivers/media/usb/gspca/gl860/gl860-mi1320.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 22 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @tbl_init_at_startup, ptr @dat_common00, ptr @dat_common01, ptr @tbl_common, ptr @dat_common02, ptr @dat_common03, ptr @dat_common04, ptr @dat_common05, ptr @dat_common06, ptr @dat_common07, ptr @dat_common08, ptr @dat_common09, ptr @dat_common10, ptr @dat_common11, ptr @tbl_sensor_settings_common, ptr @tbl_sensor_settings_1280, ptr @tbl_sensor_settings_800, ptr @tbl_sensor_settings_640, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @dat_wbalNL, ptr @dat_wbalLL, ptr @dat_wbalBL, ptr @tbl_bright, ptr @tbl_sat, ptr @tbl_backlight, ptr @dat_hvflip1, ptr @tbl_cntr1, ptr @tbl_cntr2, ptr @tbl_post_unset_alt], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_at_startup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common00 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common01 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_common to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common02 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common03 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common04 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common05 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common06 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common07 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common08 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common09 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_common11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_common to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_1280 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_800 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sensor_settings_640 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_wbalNL to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_wbalLL to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_wbalBL to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_bright to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_sat to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_backlight to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_hvflip1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_cntr1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_cntr2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_post_unset_alt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mi1320_init_settings(ptr noundef writeonly %gspca_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %vcur to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vcur, align 8
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %sharpness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6, ptr %sharpness, align 4
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 10, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %gamma to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 20, ptr %gamma, align 8
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %hue, align 2
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6, ptr %saturation, align 4
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %whitebal to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %whitebal, align 2
  %8 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %AC50Hz, align 2
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %9 = ptrtoint ptr %vmax to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %vmax, align 8
  %brightness13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %brightness13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %brightness13, align 2
  %sharpness15 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %sharpness15 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 7, ptr %sharpness15, align 4
  %contrast17 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %contrast17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %contrast17, align 2
  %gamma19 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %gamma19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 40, ptr %gamma19, align 8
  %hue21 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %hue21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 6, ptr %hue21, align 2
  %saturation23 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %saturation23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 8, ptr %saturation23, align 4
  %whitebal25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %whitebal25 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %whitebal25, align 2
  %mirror27 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %mirror27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %mirror27, align 8
  %flip29 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %flip29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %flip29, align 1
  %AC50Hz31 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %AC50Hz31 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %AC50Hz31, align 2
  %dev_camera_settings = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %20 = ptrtoint ptr %dev_camera_settings to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mi1320_camera_settings, ptr %dev_camera_settings, align 4
  %dev_init_at_startup = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %21 = ptrtoint ptr %dev_init_at_startup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mi1320_init_at_startup, ptr %dev_init_at_startup, align 8
  %dev_configure_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %22 = ptrtoint ptr %dev_configure_alt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mi1320_configure_alt, ptr %dev_configure_alt, align 4
  %dev_init_pre_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %23 = ptrtoint ptr %dev_init_pre_alt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mi1320_init_pre_alt, ptr %dev_init_pre_alt, align 4
  %dev_post_unset_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %24 = ptrtoint ptr %dev_post_unset_alt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mi1320_post_unset_alt, ptr %dev_post_unset_alt, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1320_camera_settings(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %dat_hvflip2 = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %vcur to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vcur, align 8
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %sharpness to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sharpness, align 4
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %contrast to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %gamma to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gamma, align 8
  %hue11 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %hue11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hue11, align 2
  %conv12 = zext i16 %11 to i32
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %saturation to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %saturation, align 4
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %whitebal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %whitebal, align 2
  %mirror18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %mirror18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mirror18, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp ne i8 %17, 0
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mirrorMask, align 1
  %20 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %20)
  %cmp22 = icmp ne i8 %19, %20
  %flip25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %21 = ptrtoint ptr %flip25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flip25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp27 = icmp ne i8 %22, 0
  %23 = zext i1 %cmp27 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %23)
  %cmp32 = icmp ne i8 %19, %23
  %conv33 = zext i1 %cmp32 to i8
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %AC50Hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp36 = icmp ne i8 %25, 0
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %AC50Hz38 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %AC50Hz38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %AC50Hz38, align 2
  %28 = zext i1 %cmp36 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %28)
  %cmp40.not = icmp eq i8 %27, %28
  br i1 %cmp40.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %AC50Hz38 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %AC50Hz38, align 2
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call47 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17918, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call48 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 91, i32 noundef 0, ptr noundef null) #5
  %conv49 = select i1 %cmp36, i16 -17919, i16 -17917
  %call50 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv49, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %whitebal52 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %whitebal52 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %whitebal52, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %31)
  %cmp54.not = icmp eq i16 %15, %31
  br i1 %cmp54.not, label %if.end.if.end94_crit_edge, label %if.then56

if.end.if.end94_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then56:                                        ; preds = %if.end
  %32 = ptrtoint ptr %whitebal52 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %15, ptr %whitebal52, align 2
  %whitebal62 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %whitebal62 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %whitebal62, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %34)
  %cmp64 = icmp ugt i16 %15, %34
  %narrow = select i1 %cmp64, i16 0, i16 %15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then56
  %cmp68 = phi i1 [ true, %if.then56 ], [ false, %for.inc.for.body_crit_edge ]
  %35 = zext i16 %narrow to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i16 %narrow, label %for.body.for.inc_crit_edge [
    i16 0, label %if.then72
    i16 1, label %if.then80
    i16 2, label %if.then88
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 16, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #5
  %call74 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 3, i16 noundef zeroext 193, i32 noundef 0, ptr noundef null) #5
  %call75 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 66, i16 noundef zeroext 194, i32 noundef 0, ptr noundef null) #5
  %call76 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_wbalNL) #5
  br label %for.inc

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 16, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #5
  %call82 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 4, i16 noundef zeroext 193, i32 noundef 0, ptr noundef null) #5
  %call83 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 67, i16 noundef zeroext 194, i32 noundef 0, ptr noundef null) #5
  %call84 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_wbalLL) #5
  br label %for.inc

if.then88:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call89 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 16, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #5
  %call90 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 3, i16 noundef zeroext 193, i32 noundef 0, ptr noundef null) #5
  %call91 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 66, i16 noundef zeroext 194, i32 noundef 0, ptr noundef null) #5
  %call92 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 44, ptr noundef nonnull @dat_wbalBL) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then88, %if.then80, %if.then72, %for.body.for.inc_crit_edge
  br i1 %cmp68, label %for.inc.for.body_crit_edge, label %for.inc.if.end94_crit_edge

for.inc.if.end94_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end94:                                         ; preds = %for.inc.if.end94_crit_edge, %if.end.if.end94_crit_edge
  %brightness96 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %brightness96 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %brightness96, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %37)
  %cmp98.not = icmp eq i16 %3, %37
  br i1 %cmp98.not, label %if.end94.if.end122_crit_edge, label %if.then100

if.end94.if.end122_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %brightness96 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %3, ptr %brightness96, align 2
  %brightness108 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %brightness108 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %brightness108, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %40)
  %cmp110 = icmp ugt i16 %3, %40
  %narrow496 = select i1 %cmp110, i16 0, i16 %3
  %bright.0 = zext i16 %narrow496 to i32
  %arrayidx = getelementptr [9 x i32], ptr @tbl_bright, i32 0, i32 %bright.0
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %call114 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call115 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %43 = trunc i32 %42 to i16
  %conv117 = add i16 %43, -17920
  %call118 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv117, i16 noundef zeroext 52, i32 noundef 0, ptr noundef null) #5
  %call121 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv117, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then100, %if.end94.if.end122_crit_edge
  %saturation124 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %saturation124 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %saturation124, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %45)
  %cmp126.not = icmp eq i16 %13, %45
  br i1 %cmp126.not, label %if.end122.if.end149_crit_edge, label %if.then128

if.end122.if.end149_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.then128:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %saturation124 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %13, ptr %saturation124, align 4
  %saturation136 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %saturation136 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %saturation136, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %48)
  %cmp138 = icmp ugt i16 %13, %48
  %narrow497 = select i1 %cmp138, i16 0, i16 %13
  %sat.0 = zext i16 %narrow497 to i32
  %arrayidx142 = getelementptr [9 x i32], ptr @tbl_sat, i32 0, i32 %sat.0
  %49 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx142, align 4
  %call143 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call144 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call145 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 37, i32 noundef 0, ptr noundef null) #5
  %51 = trunc i32 %50 to i16
  %conv147 = add i16 %51, -17920
  %call148 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv147, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end149

if.end149:                                        ; preds = %if.then128, %if.end122.if.end149_crit_edge
  %sharpness151 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %sharpness151 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sharpness151, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %53)
  %cmp153.not = icmp eq i16 %5, %53
  br i1 %cmp153.not, label %if.end149.if.end175_crit_edge, label %if.then155

if.end149.if.end175_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

if.then155:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %sharpness151 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %5, ptr %sharpness151, align 4
  %sharpness163 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %sharpness163 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sharpness163, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %56)
  %cmp165 = icmp ugt i16 %5, %56
  %call169 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call170 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call171 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 5, i32 noundef 0, ptr noundef null) #5
  %.op = add i16 %5, -17920
  %add172 = select i1 %cmp165, i16 -17920, i16 %.op
  %call174 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add172, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end175

if.end175:                                        ; preds = %if.then155, %if.end149.if.end175_crit_edge
  %hue177 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %57 = ptrtoint ptr %hue177 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hue177, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %58)
  %cmp179.not = icmp eq i16 %11, %58
  br i1 %cmp179.not, label %if.end175.if.end209_crit_edge, label %lor.lhs.false184

if.end175.if.end209_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

lor.lhs.false184:                                 ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  %hue186 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %59 = ptrtoint ptr %hue186 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hue186, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %60)
  %cmp188 = icmp ugt i16 %11, %60
  %spec.select = select i1 %cmp188, i32 0, i32 %conv12
  %conv194 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv194)
  %cmp195 = icmp eq i32 %spec.select, %conv194
  %spec.select503 = zext i1 %cmp195 to i8
  %61 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.select503, ptr %61, align 8
  %call200 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call201 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call202 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17808, i16 noundef zeroext 226, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %spec.select)
  %cmp203 = icmp ult i32 %spec.select, 6
  %63 = trunc i32 %spec.select to i16
  %64 = add i16 %63, -17920
  %conv207 = select i1 %cmp203, i16 %64, i16 -17920
  %call208 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv207, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end209

if.end209:                                        ; preds = %lor.lhs.false184, %if.end175.if.end209_crit_edge
  %hue.1 = phi i32 [ %spec.select, %lor.lhs.false184 ], [ %conv12, %if.end175.if.end209_crit_edge ]
  %65 = ptrtoint ptr %vold to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vold, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %66)
  %cmp213.not = icmp eq i16 %1, %66
  br i1 %cmp213.not, label %if.end209.if.end243_crit_edge, label %if.then215

if.end209.if.end243_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

if.then215:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %vold to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %1, ptr %vold, align 4
  %vmax222 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %68 = ptrtoint ptr %vmax222 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vmax222, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %69)
  %cmp225 = icmp ugt i16 %1, %69
  %narrow498 = select i1 %cmp225, i16 0, i16 %1
  %backlight.0 = zext i16 %narrow498 to i32
  %arrayidx229 = getelementptr [3 x i32], ptr @tbl_backlight, i32 0, i32 %backlight.0
  %70 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx229, align 4
  %72 = trunc i32 %71 to i16
  %conv238 = add i16 %72, -17792
  %call234 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call235 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call236 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17804, i16 noundef zeroext 6, i32 noundef 0, ptr noundef null) #5
  %call239 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv238, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call234.1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call235.1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call236.1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17804, i16 noundef zeroext 6, i32 noundef 0, ptr noundef null) #5
  %call239.1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv238, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end243

if.end243:                                        ; preds = %if.then215, %if.end209.if.end243_crit_edge
  %73 = ptrtoint ptr %hue177 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hue177, align 2
  %conv246 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %hue.1, i32 %conv246)
  %cmp247.not = icmp eq i32 %hue.1, %conv246
  br i1 %cmp247.not, label %if.end243.if.end262_crit_edge, label %if.then249

if.end243.if.end262_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end262

if.then249:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  %conv250 = trunc i32 %hue.1 to i16
  %75 = ptrtoint ptr %hue177 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv250, ptr %hue177, align 2
  %call253 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call254 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call255 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17808, i16 noundef zeroext 226, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %hue.1)
  %cmp256 = icmp slt i32 %hue.1, 6
  %76 = add i16 %conv250, -17920
  %conv260 = select i1 %cmp256, i16 %76, i16 -17920
  %call261 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv260, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end262

if.end262:                                        ; preds = %if.then249, %if.end243.if.end262_crit_edge
  %mirror264 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 8
  %77 = ptrtoint ptr %mirror264 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mirror264, align 4
  %79 = zext i1 %cmp22 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %79)
  %cmp266.not = icmp eq i8 %78, %79
  br i1 %cmp266.not, label %lor.lhs.false268, label %if.end262.if.then274_crit_edge

if.end262.if.then274_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then274

lor.lhs.false268:                                 ; preds = %if.end262
  %flip270 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %80 = ptrtoint ptr %flip270 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flip270, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %conv33)
  %cmp272.not = icmp eq i8 %81, %conv33
  br i1 %cmp272.not, label %lor.lhs.false268.if.end287_crit_edge, label %lor.lhs.false268.if.then274_crit_edge

lor.lhs.false268.if.then274_crit_edge:            ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then274

lor.lhs.false268.if.end287_crit_edge:             ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end287

if.then274:                                       ; preds = %lor.lhs.false268.if.then274_crit_edge, %if.end262.if.then274_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dat_hvflip2) #5
  %82 = ptrtoint ptr %dat_hvflip2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 536998144, ptr %dat_hvflip2, align 4
  %83 = ptrtoint ptr %mirror264 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %79, ptr %mirror264, align 4
  %flip280 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %84 = ptrtoint ptr %flip280 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv33, ptr %flip280, align 1
  %mul281 = select i1 %cmp22, i8 2, i8 0
  %add282 = or i8 %mul281, %conv33
  %arrayidx284 = getelementptr inbounds [4 x i8], ptr %dat_hvflip2, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %add282, ptr %arrayidx284, align 1
  %call285 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 4, ptr noundef nonnull @dat_hvflip1) #5
  %call286 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 4, ptr noundef nonnull %dat_hvflip2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat_hvflip2) #5
  br label %if.end287

if.end287:                                        ; preds = %if.then274, %lor.lhs.false268.if.end287_crit_edge
  %gamma289 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 4
  %86 = ptrtoint ptr %gamma289 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %gamma289, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %87)
  %cmp291.not = icmp eq i16 %9, %87
  br i1 %cmp291.not, label %if.end287.if.end314_crit_edge, label %if.then293

if.end287.if.end314_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314

if.then293:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %gamma289 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %9, ptr %gamma289, align 4
  %gamma301 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %89 = ptrtoint ptr %gamma301 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %gamma301, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %90)
  %cmp303 = icmp ugt i16 %9, %90
  %.op499 = shl i16 %9, 1
  %call308 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call309 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %call310 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17916, i16 noundef zeroext 59, i32 noundef 0, ptr noundef null) #5
  %.op499.op = add i16 %.op499, -17918
  %add311 = select i1 %cmp303, i16 -17918, i16 %.op499.op
  %call313 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %add311, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end314

if.end314:                                        ; preds = %if.then293, %if.end287.if.end314_crit_edge
  %contrast316 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  %91 = ptrtoint ptr %contrast316 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %contrast316, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %92)
  %cmp318.not = icmp eq i16 %7, %92
  br i1 %cmp318.not, label %if.end314.if.end344_crit_edge, label %if.then320

if.end314.if.end344_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end344

if.then320:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %contrast316 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %7, ptr %contrast316, align 2
  %contrast328 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %contrast328 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %contrast328, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %95)
  %cmp330 = icmp ugt i16 %7, %95
  %narrow500 = select i1 %cmp330, i16 0, i16 %7
  %cntr.0 = zext i16 %narrow500 to i32
  %call334 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17920, i16 noundef zeroext 240, i32 noundef 0, ptr noundef null) #5
  %call335 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext -17919, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  %arrayidx336 = getelementptr [11 x i32], ptr @tbl_cntr1, i32 0, i32 %cntr.0
  %96 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx336, align 4
  %98 = trunc i32 %97 to i16
  %conv338 = add i16 %98, -17920
  %call339 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv338, i16 noundef zeroext 53, i32 noundef 0, ptr noundef null) #5
  %arrayidx340 = getelementptr [11 x i32], ptr @tbl_cntr2, i32 0, i32 %cntr.0
  %99 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx340, align 4
  %101 = trunc i32 %100 to i16
  %conv342 = add i16 %101, -17920
  %call343 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %conv342, i16 noundef zeroext 241, i32 noundef 0, ptr noundef null) #5
  br label %if.end344

if.end344:                                        ; preds = %if.then320, %if.end314.if.end344_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1320_init_at_startup(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_at_startup, i32 noundef 8) #5
  tail call fastcc void @common(ptr noundef %gspca_dev)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mi1320_configure_alt(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = trunc i32 %5 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 131588, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %alt2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %7 = ptrtoint ptr %alt2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.masked, ptr %alt2, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1320_init_pre_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mirrorMask, align 1
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = call ptr @memset(ptr %vold, i32 255, i32 19)
  tail call fastcc void @common(ptr noundef %gspca_dev)
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_mode.i, align 1
  %conv.i = zext i8 %5 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %3, i32 %conv.i, i32 7
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv.i, align 4
  %call.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  %call1.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_common, i32 noundef 7) #5
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %7, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_1280, i32 noundef 8) #5
  %call3.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 64, ptr noundef nonnull @.compoundliteral) #5
  br label %mi1320_sensor_settings.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_800, i32 noundef 8) #5
  %call8.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 64, ptr noundef nonnull @.compoundliteral.3) #5
  br label %mi1320_sensor_settings.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_sensor_settings_640, i32 noundef 10) #5
  %call12.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 60, ptr noundef nonnull @.compoundliteral.6) #5
  br label %mi1320_sensor_settings.exit

mi1320_sensor_settings.exit:                      ; preds = %sw.default.i, %sw.bb6.i, %sw.bb.i
  %.compoundliteral.7.sink.i = phi ptr [ @.compoundliteral.7, %sw.default.i ], [ @.compoundliteral.4, %sw.bb6.i ], [ @.compoundliteral.1, %sw.bb.i ]
  %.compoundliteral.8.sink.i = phi ptr [ @.compoundliteral.8, %sw.default.i ], [ @.compoundliteral.5, %sw.bb6.i ], [ @.compoundliteral.2, %sw.bb.i ]
  %call13.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 40, ptr noundef nonnull %.compoundliteral.7.sink.i) #5
  %call14.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull %.compoundliteral.8.sink.i) #5
  %call.i26 = tail call i32 @mi1320_camera_settings(ptr noundef %gspca_dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mi1320_post_unset_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  %call1 = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_post_unset_alt, i32 noundef 6) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fetch_validx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @common(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 22, ptr noundef nonnull @dat_common00) #5
  %call1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 65, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  %call2 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 32, ptr noundef nonnull @dat_common01) #5
  %call3 = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 25) #5
  %call4 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_common02) #5
  %call5 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_common03) #5
  %call6 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 16, ptr noundef nonnull @dat_common04) #5
  %call7 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_common05) #5
  %call8 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 44, ptr noundef nonnull @dat_common06) #5
  %call9 = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 25, i32 noundef %call3) #5
  %call10 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 52, ptr noundef nonnull @dat_common07) #5
  %call11 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_common08) #5
  %call12 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 48, ptr noundef nonnull @dat_common09) #5
  %call13 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 56, ptr noundef nonnull @dat_common10) #5
  %call14 = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 25, i32 noundef %call3) #5
  %call15 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext -17920, i16 noundef zeroext 512, i32 noundef 40, ptr noundef nonnull @dat_common11) #5
  %call16 = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common, i32 noundef 25, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gl860_RTx(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keep_on_fetching_validx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @tbl_init_at_startup, !1, !"tbl_init_at_startup", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 23, i32 22}
!2 = !{ptr @dat_common00, !3, !"dat_common00", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 144, i32 11}
!4 = !{ptr @dat_common01, !5, !"dat_common01", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 147, i32 11}
!6 = !{ptr @tbl_common, !7, !"tbl_common", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 10, i32 22}
!8 = !{ptr @dat_common02, !9, !"dat_common02", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 150, i32 11}
!10 = !{ptr @dat_common03, !11, !"dat_common03", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 154, i32 11}
!12 = !{ptr @dat_common04, !13, !"dat_common04", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 158, i32 11}
!14 = !{ptr @dat_common05, !15, !"dat_common05", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 160, i32 11}
!16 = !{ptr @dat_common06, !17, !"dat_common06", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 164, i32 11}
!18 = !{ptr @dat_common07, !19, !"dat_common07", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 168, i32 11}
!20 = !{ptr @dat_common08, !21, !"dat_common08", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 173, i32 11}
!22 = !{ptr @dat_common09, !23, !"dat_common09", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 177, i32 11}
!24 = !{ptr @dat_common10, !25, !"dat_common10", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 181, i32 11}
!26 = !{ptr @dat_common11, !27, !"dat_common11", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 186, i32 11}
!28 = !{ptr @tbl_sensor_settings_common, !29, !"tbl_sensor_settings_common", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 30, i32 22}
!30 = !{ptr @tbl_sensor_settings_1280, !31, !"tbl_sensor_settings_1280", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 34, i32 22}
!32 = distinct !{null, !33, !"tbl_1280", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 52, i32 12}
!34 = !{ptr @tbl_sensor_settings_800, !35, !"tbl_sensor_settings_800", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 38, i32 22}
!36 = distinct !{null, !37, !"tbl_800", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 74, i32 12}
!38 = !{ptr @tbl_sensor_settings_640, !39, !"tbl_sensor_settings_640", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 42, i32 22}
!40 = distinct !{null, !41, !"tbl_640", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 96, i32 12}
!42 = !{ptr @dat_wbalNL, !43, !"dat_wbalNL", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 127, i32 11}
!44 = !{ptr @dat_wbalLL, !45, !"dat_wbalLL", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 132, i32 11}
!46 = !{ptr @dat_wbalBL, !47, !"dat_wbalBL", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 137, i32 11}
!48 = !{ptr @tbl_bright, !49, !"tbl_bright", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 119, i32 12}
!50 = !{ptr @tbl_sat, !51, !"tbl_sat", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 118, i32 12}
!52 = !{ptr @tbl_backlight, !53, !"tbl_backlight", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 120, i32 12}
!54 = !{ptr @dat_hvflip1, !55, !"dat_hvflip1", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 142, i32 11}
!56 = !{ptr @tbl_cntr1, !57, !"tbl_cntr1", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 122, i32 12}
!58 = !{ptr @tbl_cntr2, !59, !"tbl_cntr2", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 124, i32 12}
!60 = !{ptr @tbl_post_unset_alt, !61, !"tbl_post_unset_alt", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi1320.c", i32 47, i32 22}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
