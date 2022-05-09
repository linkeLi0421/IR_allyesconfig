; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-tw28.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-tw28.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@solo_tw28_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not initialize any techwell chips\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solo_tw28_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/solo6x10/solo6x10-tw28.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_tw28_init._entry_ptr = internal global ptr @solo_tw28_init._entry, section ".printk_index", align 4
@saa712x_setup.saa7128_regs_ntsc = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\0D\00Y\1Du?\06?\00\00\00\00\00\00\00\00\00\00\1A\1A\13\00\00\00\00\00\00\00\00h\10\97L\18\9B\93\9F\FF|4???\83\83\80\0D\0F\C3\06\02\80qw\A7gf.{\11O\1F|\F0!wA\88AR\ED\10\10\00A\C3\00>\B8\02\00\00\00\00\08\02\C0\00\FF\FF", [38 x i8] zeroinitializer }, align 32
@saa712x_setup.saa7128_regs_pal = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\0D\00\E1\1Du?\06?\00\00\00\00\00\00\00\00\00\00\1A\1A\13\00\00\00\00\00\00\00\00h\10\97L\18\9B\93\9F\FF|4???\83\83\80\0D\0F\C3\06\02\80\0Fw\A7gf.{\025\CB\8A\09*wA\88AR\F1\10 \00A\C3\00>\B8\02\00\00\00\00\120\C0\00\FF\FF", [38 x i8] zeroinitializer }, align 32
@tbl_tw2865_pal_template = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F0p0\80\80\00\12\11\FF\01\C3\00\00\01\7F\00\F0p0\80\80\00\12\11\FF\01\C3\00\00\01\7F\00\F0p0\80\80\00\12\11\FF\01\C3\00\00\01\7F\00\F0p0\80\80\00\12\11\FF\01\C3\00\00\01\7F\00\94\90H\008\7F\80\80\80w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00E\11\00\00\00\00\00\00\00\00\00\00\00\00!C\08\00\00\01\F1\03\EF\03\EA\03\D9\15\15\E4\A3\80\00\02\00\CC\00\80DP\22\01\D8\BC\B8D8\00\00xD=\14\A5\E0\05\00(DD\A0\90R\13\08\08\08\08\1A\1A\1A\1A\00\00\00\F0\F0\F0\F0DDJ\00\FF\EF\EF\EF\EF\FF\E7\E9\E9\E9\FF\D7\D8\D9\D8\00\00\00\00\00\00\00\00U\00\E49\00\80ww\03 W\9B\DF1d\A8\EC\D1\0F\11\11\81\10\C0\AA\AA\00\11\00\00\11\00\00\11\00\00\11\00\83\B5\09\00\A0\00\01 dQ@\AF\FF\F0\00\C0", [64 x i8] zeroinitializer }, align 32
@tbl_tw2865_ntsc_template = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F0p0\80\80\00\02\12\FF\09\D0\00\00\00\7F\00\F0p0\80\80\00\02\12\FF\09\D0\00\00\00\7F\00\F0p0\80\80\00\02\12\FF\09\D0\00\00\00\7F\00\F0pH\80\80\00\02\12\FF\09\D0\00\00\00\7F\00\00\90h\008\80\80\80\80w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00E\11\00\00\00\00\00\00\00\00\00\00\00\00!C\08\00\00\01\F1\03\EF\03\E9\03\D9\15\15\E4\A3\80\00\02\00\CC\00\80DP\22\01\D8\BC\B8D8\00\00xD=\14\A5\E0\05\00(DD\A0\90R\13\08\08\08\08\1A\1A\1B\1A\00\00\00\F0\F0\F0\F0DDJ\00\FF\EF\EF\EF\EF\FF\E7\E9\E9\EB\FF\D6\D8\D8\D7\00\00\00\00\00\00\00\00U\00\E49\00\80ww\03 W\9B\DF1d\A8\EC\D1\0F\11\11\81\10\C0\AA\AA\00\11\00\00\11\00\00\11\00\00\11\00\83\B5\09x\85\00\01 dQ@\AF\FF\F0\00\C0", [64 x i8] zeroinitializer }, align 32
@tbl_tw2864_pal_template = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F0p0\80\80\00\12\18\F5\0C\D0\00\00\01\7F\00\F0p0\80\80\00\12\18\F5\0C\D0\00\00\01\7F\00\F0p0\80\80\00\12\18\F5\0C\D0\00\00\01\7F\00\F0p0\80\80\00\12\18\F5\0C\D0\00\00\01\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A3\00\00\02\00\CC\00\80DP\22\01\D8\BC\B8D8\00\00xr>\14\A5\E4\05\00(DD\A0\90Z\01\0A\0A\0A\0A\1A\1A\1A\1A\00\00\00\F0\F0\F0\F0DD\0A\00\FF\EF\EF\EF\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\B1\E4@\00ww\01\13W\9B\DF d\A8\EC\C1\0F\11\11\81\00\E0\BB\BB\00\11\00\00\11\00\00\11\00\00\11\00\83\B5\09\00\A0\00\01 d\11@\AF\FF\00\00\00", [64 x i8] zeroinitializer }, align 32
@tbl_tw2864_ntsc_template = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F0p0\80\80\00\02\12\F5\0C\D0\00\00\00\7F\00\F0p0\80\80\00\02\12\F5\0C\D0\00\00\00\7F\00\F0p0\80\80\00\02\12\F5\0C\D0\00\00\00\7F\00\F0p0\80\80\00\02\12\F5\0C\D0\00\00\00\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A3\00\00\02\00\CC\00\80DP\22\01\D8\BC\B8D8\00\00xr>\14\A5\E4\05\00(DD\A0\88Z\01\08\08\08\08\1A\1A\1A\1A\00\00\00\F0\F0\F0\F0DD\0A\00\FF\EF\EF\EF\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\B1\E4@\00ww\01\13W\9B\DF d\A8\EC\C1\0F\11\11\81\00\E0\BB\BB\00\11\00\00\11\00\00\11\00\00\11\00\83\B5\09x\85\00\01 d\11@\AF\FF\00\00\00", [64 x i8] zeroinitializer }, align 32
@__const.tw2815_setup.tbl_tw2815_sfr = private unnamed_addr constant [54 x i8] c"\00\00\00\C0E\A0\D0/d\80\80\82\82\00\00\00\00\0F\05\00\00\80\06\00\00\00\00\FF\8F\00\00\00\88\88\C0\00 d\A8\EC1u\B9\FD\00\00\88\88\88\11\00\88\88\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 13, i64 24]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.6 = internal global [17 x i64] [i64 15, i64 32, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 196, i64 197, i64 198, i64 199, i64 253]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 13]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [13 x i64] [i64 11, i64 32, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 253]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 13]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 64, i64 89, i64 90, i64 93, i64 94, i64 95]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803]
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 616, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"saa7128_regs_ntsc\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 526, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"saa7128_regs_pal\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 549, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"tbl_tw2865_pal_template\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 134, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"tbl_tw2865_ntsc_template\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 99, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"tbl_tw2864_pal_template\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 64, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"tbl_tw2864_ntsc_template\00", align 1
@___asan_gen_.54 = private constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-tw28.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 29, i32 17 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @solo_tw28_init._entry, ptr @solo_tw28_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @saa712x_setup.saa7128_regs_ntsc, ptr @saa712x_setup.saa7128_regs_pal, ptr @tbl_tw2865_pal_template, ptr @tbl_tw2865_ntsc_template, ptr @tbl_tw2864_pal_template, ptr @tbl_tw2864_ntsc_template], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_tw28_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa712x_setup.saa7128_regs_ntsc to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa712x_setup.saa7128_regs_pal to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tw2865_pal_template to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tw2865_ntsc_template to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tw2864_pal_template to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_tw2864_ntsc_template to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_tw28_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %tbl_ntsc_tw2815_common.i.sroa.20 = alloca i8, align 1
  %tbl_pal_tw2815_common.i.sroa.20 = alloca i8, align 1
  %tbl_tw2815_sfr.i = alloca [54 x i8], align 1
  %tbl_tw2864_common.i = alloca [256 x i8], align 1
  %tbl_tw2865_common.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tw28_cnt = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 15
  %0 = ptrtoint ptr %tw28_cnt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tw28_cnt, align 1
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %1 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp128 = icmp sgt i32 %2, 3
  br i1 %cmp128, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tw2864 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 13
  %tw2865 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 12
  %tw2815 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %for.inc.for.body_crit_edge ]
  %3 = trunc i32 %i.0129 to i8
  %conv = add i8 %3, 40
  %call = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv, i8 noundef zeroext -1) #5
  %4 = lshr i8 %call, 3
  %5 = zext i8 %4 to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 24, label %sw.bb
    i32 12, label %for.body.sw.bb5_crit_edge
    i32 13, label %for.body.sw.bb5_crit_edge232
  ]

for.body.sw.bb5_crit_edge232:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

for.body.sw.bb5_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %i.0129
  %7 = ptrtoint ptr %tw2865 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tw2865, align 4
  %9 = trunc i32 %shl to i8
  %conv3 = or i8 %8, %9
  store i8 %conv3, ptr %tw2865, align 4
  br label %for.inc.sink.split

sw.bb5:                                           ; preds = %for.body.sw.bb5_crit_edge, %for.body.sw.bb5_crit_edge232
  %shl6 = shl nuw i32 1, %i.0129
  %10 = ptrtoint ptr %tw2864 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tw2864, align 1
  %12 = trunc i32 %shl6 to i8
  %conv9 = or i8 %11, %12
  store i8 %conv9, ptr %tw2864, align 1
  br label %for.inc.sink.split

sw.default:                                       ; preds = %for.body
  %call14 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv, i8 noundef zeroext 89) #5
  %.mask = and i8 %call14, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp17 = icmp eq i8 %.mask, 32
  br i1 %cmp17, label %if.then, label %sw.default.for.inc_crit_edge

sw.default.for.inc_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %shl19 = shl nuw i32 1, %i.0129
  %13 = ptrtoint ptr %tw2815 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tw2815, align 2
  %15 = trunc i32 %shl19 to i8
  %conv22 = or i8 %14, %15
  store i8 %conv22, ptr %tw2815, align 2
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then, %sw.bb5, %sw.bb
  %16 = ptrtoint ptr %tw28_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tw28_cnt, align 1
  %inc = add i8 %17, 1
  store i8 %inc, ptr %tw28_cnt, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.default.for.inc_crit_edge
  %inc25 = add nuw nsw i32 %i.0129, 1
  %18 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_chans, align 8
  %div = sdiv i32 %19, 4
  %cmp = icmp slt i32 %inc25, %div
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %2, %entry.for.end_crit_edge ], [ %19, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %tw28_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tw28_cnt, align 1
  %conv27 = zext i8 %21 to i32
  %shr29 = ashr i32 %.lcssa, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr29, i32 %conv27)
  %cmp30.not = icmp eq i32 %shr29, %conv27
  br i1 %cmp30.not, label %if.end33, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end33:                                         ; preds = %for.end
  %video_type.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 37
  %24 = ptrtoint ptr %video_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %video_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %25)
  %cmp.i = icmp eq i32 %25, 1073741824
  br i1 %cmp.i, label %if.end33.for.body.i.i_crit_edge, label %if.end33.for.body.i7.i_crit_edge

if.end33.for.body.i7.i_crit_edge:                 ; preds = %if.end33
  br label %for.body.i7.i

if.end33.for.body.i.i_crit_edge:                  ; preds = %if.end33
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end33.for.body.i.i_crit_edge
  %vals.addr.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ @saa712x_setup.saa7128_regs_pal, %if.end33.for.body.i.i_crit_edge ]
  %start.addr.01.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 38, %if.end33.for.body.i.i_crit_edge ]
  %start.addr.0.off.i.i = add nsw i32 %start.addr.01.i.i, -46
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %start.addr.0.off.i.i)
  %switch.i.i = icmp ult i32 %start.addr.0.off.i.i, 10
  br i1 %switch.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %sw.epilog.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

sw.epilog.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = trunc i32 %start.addr.01.i.i to i8
  %26 = ptrtoint ptr %vals.addr.03.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vals.addr.03.i.i, align 1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 1, i8 noundef zeroext 70, i8 noundef zeroext %conv.i.i, i8 noundef zeroext %27) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.epilog.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %start.addr.01.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %vals.addr.03.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 90
  br i1 %exitcond.not.i.i, label %for.inc.i.i.saa712x_setup.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.saa712x_setup.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa712x_setup.exit

for.body.i7.i:                                    ; preds = %for.inc.i13.i.for.body.i7.i_crit_edge, %if.end33.for.body.i7.i_crit_edge
  %vals.addr.03.i3.i = phi ptr [ %incdec.ptr.i11.i, %for.inc.i13.i.for.body.i7.i_crit_edge ], [ @saa712x_setup.saa7128_regs_ntsc, %if.end33.for.body.i7.i_crit_edge ]
  %start.addr.01.i4.i = phi i32 [ %inc.i10.i, %for.inc.i13.i.for.body.i7.i_crit_edge ], [ 38, %if.end33.for.body.i7.i_crit_edge ]
  %start.addr.0.off.i5.i = add nsw i32 %start.addr.01.i4.i, -46
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %start.addr.0.off.i5.i)
  %switch.i6.i = icmp ult i32 %start.addr.0.off.i5.i, 10
  br i1 %switch.i6.i, label %for.body.i7.i.for.inc.i13.i_crit_edge, label %sw.epilog.i9.i

for.body.i7.i.for.inc.i13.i_crit_edge:            ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i13.i

sw.epilog.i9.i:                                   ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i8.i = trunc i32 %start.addr.01.i4.i to i8
  %28 = ptrtoint ptr %vals.addr.03.i3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vals.addr.03.i3.i, align 1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 1, i8 noundef zeroext 70, i8 noundef zeroext %conv.i8.i, i8 noundef zeroext %29) #5
  br label %for.inc.i13.i

for.inc.i13.i:                                    ; preds = %sw.epilog.i9.i, %for.body.i7.i.for.inc.i13.i_crit_edge
  %inc.i10.i = add nuw nsw i32 %start.addr.01.i4.i, 1
  %incdec.ptr.i11.i = getelementptr i8, ptr %vals.addr.03.i3.i, i32 1
  %exitcond.not.i12.i = icmp eq i32 %inc.i10.i, 90
  br i1 %exitcond.not.i12.i, label %for.inc.i13.i.saa712x_setup.exit_crit_edge, label %for.inc.i13.i.for.body.i7.i_crit_edge

for.inc.i13.i.for.body.i7.i_crit_edge:            ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i7.i

for.inc.i13.i.saa712x_setup.exit_crit_edge:       ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa712x_setup.exit

saa712x_setup.exit:                               ; preds = %for.inc.i13.i.saa712x_setup.exit_crit_edge, %for.inc.i.i.saa712x_setup.exit_crit_edge
  %30 = ptrtoint ptr %tw28_cnt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tw28_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp37132.not = icmp eq i8 %31, 0
  br i1 %cmp37132.not, label %saa712x_setup.exit.cleanup_crit_edge, label %for.body39.lr.ph

saa712x_setup.exit.cleanup_crit_edge:             ; preds = %saa712x_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body39.lr.ph:                                 ; preds = %saa712x_setup.exit
  %tw286540 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 12
  %arrayidx20.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2865_common.i, i32 0, i32 210
  %arrayidx13.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2865_common.i, i32 0, i32 207
  %tw286447 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 13
  %arrayidx67.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 8
  %arrayidx67.1.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 24
  %arrayidx67.2.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 40
  %arrayidx67.3.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 56
  %arrayidx67.4.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 72
  %arrayidx84.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 210
  %arrayidx77.i = getelementptr inbounds [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 207
  %arrayidx46.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 34
  %arrayidx90.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 35
  %arrayidx140.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 44
  %arrayidx148.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 28
  %arrayidx152.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 48
  %arrayidx156.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 49
  %arrayidx160.i = getelementptr inbounds [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 45
  br label %for.body39

for.body39:                                       ; preds = %for.inc62.for.body39_crit_edge, %for.body39.lr.ph
  %i.1133 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc63, %for.inc62.for.body39_crit_edge ]
  %32 = ptrtoint ptr %tw286540 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tw286540, align 4
  %conv41 = zext i8 %33 to i32
  %shl42 = shl nuw i32 1, %i.1133
  %and = and i32 %shl42, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %for.body39
  %34 = trunc i32 %i.1133 to i8
  %conv45 = add i8 %34, 40
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tbl_tw2865_common.i) #5
  %35 = ptrtoint ptr %video_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %video_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %36)
  %cmp.i100 = icmp eq i32 %36, 1073741824
  br i1 %cmp.i100, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %37 = call ptr @memcpy(ptr %tbl_tw2865_common.i, ptr @tbl_tw2865_pal_template, i32 256)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %38 = call ptr @memcpy(ptr %tbl_tw2865_common.i, ptr @tbl_tw2865_ntsc_template, i32 256)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %39 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_chans, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %40, label %if.end.i.for.body.i.preheader_crit_edge [
    i32 4, label %if.then3.i
    i32 8, label %if.then8.i
    i32 16, label %if.then19.i
  ]

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx20.i, align 1
  br label %if.end43.sink.split.i

if.then8.i:                                       ; preds = %if.end.i
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %conv45)
  %cmp10.i = icmp eq i8 %conv45, 41
  br i1 %cmp10.i, label %if.then8.i.if.end43.sink.split.i_crit_edge, label %if.then8.i.for.body.i.preheader_crit_edge

if.then8.i.for.body.i.preheader_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

if.then8.i.if.end43.sink.split.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.sink.split.i

if.then19.i:                                      ; preds = %if.end.i
  %44 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %arrayidx20.i, align 1
  %switch.tableidx = add i8 %34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %45 = icmp ult i8 %switch.tableidx, 3
  br i1 %45, label %switch.lookup, label %if.then19.i.for.body.i.preheader_crit_edge

if.then19.i.for.body.i.preheader_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

switch.lookup:                                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 -8354941, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %if.end43.sink.split.i

if.end43.sink.split.i:                            ; preds = %switch.lookup, %if.then8.i.if.end43.sink.split.i_crit_edge, %if.then3.i
  %.sink.i = phi i8 [ 0, %if.then3.i ], [ -128, %if.then8.i.if.end43.sink.split.i_crit_edge ], [ %switch.masked, %switch.lookup ]
  %46 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink.i, ptr %arrayidx13.i, align 1
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end43.sink.split.i, %if.then19.i.for.body.i.preheader_crit_edge, %if.then8.i.for.body.i.preheader_crit_edge, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.01.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %47 = zext i32 %i.01.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %i.01.i, label %sw.epilog.i [
    i32 253, label %for.body.i.for.inc.i_crit_edge
    i32 196, label %for.body.i.for.inc.i_crit_edge233
    i32 197, label %for.body.i.for.inc.i_crit_edge234
    i32 198, label %for.body.i.for.inc.i_crit_edge235
    i32 199, label %for.body.i.for.inc.i_crit_edge236
    i32 184, label %for.body.i.for.inc.i_crit_edge237
    i32 185, label %for.body.i.for.inc.i_crit_edge238
    i32 186, label %for.body.i.for.inc.i_crit_edge239
    i32 187, label %for.body.i.for.inc.i_crit_edge240
    i32 188, label %for.body.i.for.inc.i_crit_edge241
    i32 189, label %for.body.i.for.inc.i_crit_edge242
    i32 190, label %for.body.i.for.inc.i_crit_edge243
    i32 191, label %for.body.i.for.inc.i_crit_edge244
    i32 192, label %for.body.i.for.inc.i_crit_edge245
    i32 193, label %for.body.i.for.inc.i_crit_edge246
  ]

for.body.i.for.inc.i_crit_edge246:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge245:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge244:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge243:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge242:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge241:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge240:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge239:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge238:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge237:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge236:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge235:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge234:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge233:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %for.body.i
  %and.i = and i32 %i.01.i, 2147483599
  %48 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.i, label %sw.epilog50.i [
    i32 0, label %sw.epilog.i.for.inc.i_crit_edge
    i32 12, label %sw.epilog.i.for.inc.i_crit_edge247
    i32 13, label %sw.epilog.i.for.inc.i_crit_edge248
  ]

sw.epilog.i.for.inc.i_crit_edge248:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog.i.for.inc.i_crit_edge247:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog50.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv51.i = trunc i32 %i.01.i to i8
  %arrayidx52.i = getelementptr [256 x i8], ptr %tbl_tw2865_common.i, i32 0, i32 %i.01.i
  %49 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx52.i, align 1
  tail call fastcc void @tw_write_and_verify(ptr noundef %solo_dev, i8 noundef zeroext %conv45, i8 noundef zeroext %conv51.i, i8 noundef zeroext %50) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog50.i, %sw.epilog.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge247, %sw.epilog.i.for.inc.i_crit_edge248, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge233, %for.body.i.for.inc.i_crit_edge234, %for.body.i.for.inc.i_crit_edge235, %for.body.i.for.inc.i_crit_edge236, %for.body.i.for.inc.i_crit_edge237, %for.body.i.for.inc.i_crit_edge238, %for.body.i.for.inc.i_crit_edge239, %for.body.i.for.inc.i_crit_edge240, %for.body.i.for.inc.i_crit_edge241, %for.body.i.for.inc.i_crit_edge242, %for.body.i.for.inc.i_crit_edge243, %for.body.i.for.inc.i_crit_edge244, %for.body.i.for.inc.i_crit_edge245, %for.body.i.for.inc.i_crit_edge246
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %tw2865_setup.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tw2865_setup.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tbl_tw2865_common.i) #5
  br label %for.inc62

if.else:                                          ; preds = %for.body39
  %51 = ptrtoint ptr %tw286447 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tw286447, align 1
  %conv48 = zext i8 %52 to i32
  %and50 = and i32 %shl42, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %53 = trunc i32 %i.1133 to i8
  %conv58 = add i8 %53, 40
  br i1 %tobool51.not, label %if.else56, label %if.then52

if.then52:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tbl_tw2864_common.i) #5
  %54 = ptrtoint ptr %video_type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %video_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %55)
  %cmp.i102 = icmp eq i32 %55, 1073741824
  br i1 %cmp.i102, label %if.then.i103, label %if.else.i104

if.then.i103:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %56 = call ptr @memcpy(ptr %tbl_tw2864_common.i, ptr @tbl_tw2864_pal_template, i32 256)
  br label %if.end.i105

if.else.i104:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %57 = call ptr @memcpy(ptr %tbl_tw2864_common.i, ptr @tbl_tw2864_ntsc_template, i32 256)
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.else.i104, %if.then.i103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp2.i = icmp eq i8 %33, 0
  br i1 %cmp2.i, label %if.then4.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i105
  %58 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 18, ptr %arrayidx67.i, align 1
  %59 = ptrtoint ptr %arrayidx67.1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 18, ptr %arrayidx67.1.i, align 1
  %60 = ptrtoint ptr %arrayidx67.2.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 18, ptr %arrayidx67.2.i, align 1
  %61 = ptrtoint ptr %arrayidx67.3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 18, ptr %arrayidx67.3.i, align 1
  %62 = ptrtoint ptr %arrayidx67.4.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 18, ptr %arrayidx67.4.i, align 1
  %63 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_chans, align 8
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %64, label %for.body.preheader.i.for.body111.i.preheader_crit_edge [
    i32 8, label %if.then71.i
    i32 16, label %if.then83.i
  ]

for.body.preheader.i.for.body111.i.preheader_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

if.then4.i:                                       ; preds = %if.end.i105
  %66 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr_chans, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %67, label %if.then4.i.for.body111.i.preheader_crit_edge [
    i32 4, label %if.then7.i
    i32 8, label %if.then13.i
    i32 16, label %if.then32.i
  ]

if.then4.i.for.body111.i.preheader_crit_edge:     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %arrayidx84.i, align 1
  br label %if.end107.sink.split.i

if.then13.i:                                      ; preds = %if.then4.i
  %70 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %arrayidx84.i, align 1
  %71 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %53, label %if.then13.i.for.body111.i.preheader_crit_edge [
    i8 0, label %if.then13.i.if.end107.sink.split.i_crit_edge
    i8 1, label %if.then24.i
  ]

if.then13.i.if.end107.sink.split.i_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.sink.split.i

if.then13.i.for.body111.i.preheader_crit_edge:    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

if.then24.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.sink.split.i

if.then32.i:                                      ; preds = %if.then4.i
  %72 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 3, ptr %arrayidx84.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %53)
  %73 = icmp ult i8 %53, 4
  br i1 %73, label %switch.lookup218, label %if.then32.i.for.body111.i.preheader_crit_edge

if.then32.i.for.body111.i.preheader_crit_edge:    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

if.then71.i:                                      ; preds = %for.body.preheader.i
  %74 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 2, ptr %arrayidx84.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %conv58)
  %cmp74.i = icmp eq i8 %conv58, 41
  br i1 %cmp74.i, label %if.then71.i.if.end107.sink.split.i_crit_edge, label %if.then71.i.for.body111.i.preheader_crit_edge

if.then71.i.for.body111.i.preheader_crit_edge:    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

if.then71.i.if.end107.sink.split.i_crit_edge:     ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107.sink.split.i

if.then83.i:                                      ; preds = %for.body.preheader.i
  %75 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %arrayidx84.i, align 1
  %switch.tableidx224 = add i8 %53, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx224)
  %76 = icmp ult i8 %switch.tableidx224, 3
  br i1 %76, label %switch.lookup223, label %if.then83.i.for.body111.i.preheader_crit_edge

if.then83.i.for.body111.i.preheader_crit_edge:    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i.preheader

switch.lookup218:                                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast219 = shl i32 %i.1133, 3
  %switch.shiftamt220 = and i32 %switch.cast219, 2040
  %switch.downshift221 = lshr i32 1078149955, %switch.shiftamt220
  %switch.masked222 = trunc i32 %switch.downshift221 to i8
  br label %if.end107.sink.split.i

switch.lookup223:                                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast225 = zext i8 %switch.tableidx224 to i24
  %switch.shiftamt226 = shl nuw nsw i24 %switch.cast225, 3
  %switch.downshift227 = lshr i24 -8354941, %switch.shiftamt226
  %switch.masked228 = trunc i24 %switch.downshift227 to i8
  br label %if.end107.sink.split.i

if.end107.sink.split.i:                           ; preds = %switch.lookup223, %switch.lookup218, %if.then71.i.if.end107.sink.split.i_crit_edge, %if.then24.i, %if.then13.i.if.end107.sink.split.i_crit_edge, %if.then7.i
  %.sink.i108 = phi i8 [ 0, %if.then7.i ], [ 64, %if.then24.i ], [ 67, %if.then13.i.if.end107.sink.split.i_crit_edge ], [ -128, %if.then71.i.if.end107.sink.split.i_crit_edge ], [ %switch.masked222, %switch.lookup218 ], [ %switch.masked228, %switch.lookup223 ]
  %77 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink.i108, ptr %arrayidx77.i, align 1
  br label %for.body111.i.preheader

for.body111.i.preheader:                          ; preds = %if.end107.sink.split.i, %if.then83.i.for.body111.i.preheader_crit_edge, %if.then71.i.for.body111.i.preheader_crit_edge, %if.then32.i.for.body111.i.preheader_crit_edge, %if.then13.i.for.body111.i.preheader_crit_edge, %if.then4.i.for.body111.i.preheader_crit_edge, %for.body.preheader.i.for.body111.i.preheader_crit_edge
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.inc117.i.for.body111.i_crit_edge, %for.body111.i.preheader
  %i.12.i = phi i32 [ %inc118.i, %for.inc117.i.for.body111.i_crit_edge ], [ 0, %for.body111.i.preheader ]
  %78 = zext i32 %i.12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %i.12.i, label %sw.epilog.i110 [
    i32 253, label %for.body111.i.for.inc117.i_crit_edge
    i32 184, label %for.body111.i.for.inc117.i_crit_edge249
    i32 185, label %for.body111.i.for.inc117.i_crit_edge250
    i32 186, label %for.body111.i.for.inc117.i_crit_edge251
    i32 187, label %for.body111.i.for.inc117.i_crit_edge252
    i32 188, label %for.body111.i.for.inc117.i_crit_edge253
    i32 189, label %for.body111.i.for.inc117.i_crit_edge254
    i32 190, label %for.body111.i.for.inc117.i_crit_edge255
    i32 191, label %for.body111.i.for.inc117.i_crit_edge256
    i32 192, label %for.body111.i.for.inc117.i_crit_edge257
    i32 193, label %for.body111.i.for.inc117.i_crit_edge258
  ]

for.body111.i.for.inc117.i_crit_edge258:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge257:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge256:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge255:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge254:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge253:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge252:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge251:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge250:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge249:          ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

for.body111.i.for.inc117.i_crit_edge:             ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

sw.epilog.i110:                                   ; preds = %for.body111.i
  %and.i109 = and i32 %i.12.i, 2147483599
  %79 = zext i32 %and.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and.i109, label %sw.epilog114.i [
    i32 0, label %sw.epilog.i110.for.inc117.i_crit_edge
    i32 12, label %sw.epilog.i110.for.inc117.i_crit_edge259
    i32 13, label %sw.epilog.i110.for.inc117.i_crit_edge260
  ]

sw.epilog.i110.for.inc117.i_crit_edge260:         ; preds = %sw.epilog.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

sw.epilog.i110.for.inc117.i_crit_edge259:         ; preds = %sw.epilog.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

sw.epilog.i110.for.inc117.i_crit_edge:            ; preds = %sw.epilog.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc117.i

sw.epilog114.i:                                   ; preds = %sw.epilog.i110
  call void @__sanitizer_cov_trace_pc() #7
  %conv115.i = trunc i32 %i.12.i to i8
  %arrayidx116.i = getelementptr [256 x i8], ptr %tbl_tw2864_common.i, i32 0, i32 %i.12.i
  %80 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx116.i, align 1
  tail call fastcc void @tw_write_and_verify(ptr noundef %solo_dev, i8 noundef zeroext %conv58, i8 noundef zeroext %conv115.i, i8 noundef zeroext %81) #5
  br label %for.inc117.i

for.inc117.i:                                     ; preds = %sw.epilog114.i, %sw.epilog.i110.for.inc117.i_crit_edge, %sw.epilog.i110.for.inc117.i_crit_edge259, %sw.epilog.i110.for.inc117.i_crit_edge260, %for.body111.i.for.inc117.i_crit_edge, %for.body111.i.for.inc117.i_crit_edge249, %for.body111.i.for.inc117.i_crit_edge250, %for.body111.i.for.inc117.i_crit_edge251, %for.body111.i.for.inc117.i_crit_edge252, %for.body111.i.for.inc117.i_crit_edge253, %for.body111.i.for.inc117.i_crit_edge254, %for.body111.i.for.inc117.i_crit_edge255, %for.body111.i.for.inc117.i_crit_edge256, %for.body111.i.for.inc117.i_crit_edge257, %for.body111.i.for.inc117.i_crit_edge258
  %inc118.i = add nuw nsw i32 %i.12.i, 1
  %exitcond.not.i111 = icmp eq i32 %inc118.i, 255
  br i1 %exitcond.not.i111, label %tw2864_setup.exit, label %for.inc117.i.for.body111.i_crit_edge

for.inc117.i.for.body111.i_crit_edge:             ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body111.i

tw2864_setup.exit:                                ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tbl_tw2864_common.i) #5
  br label %for.inc62

if.else56:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tbl_ntsc_tw2815_common.i.sroa.20)
  %82 = ptrtoint ptr %tbl_ntsc_tw2815_common.i.sroa.20 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %tbl_ntsc_tw2815_common.i.sroa.20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tbl_pal_tw2815_common.i.sroa.20)
  %83 = ptrtoint ptr %tbl_pal_tw2815_common.i.sroa.20 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %tbl_pal_tw2815_common.i.sroa.20, align 1
  call void @llvm.lifetime.start.p0(i64 54, ptr nonnull %tbl_tw2815_sfr.i) #5
  %84 = call ptr @memcpy(ptr %tbl_tw2815_sfr.i, ptr @__const.tw2815_setup.tbl_tw2815_sfr, i32 54)
  %85 = ptrtoint ptr %video_type.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %video_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i117 = icmp eq i32 %86, 0
  %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %cmp.i117, ptr %tbl_ntsc_tw2815_common.i.sroa.20, ptr %tbl_pal_tw2815_common.i.sroa.20
  %87 = ptrtoint ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  %89 = or i8 %88, 4
  store i8 %89, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  %90 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx46.i, align 1
  %91 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr_chans, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %92, label %if.else56.if.end135.i_crit_edge [
    i32 4, label %if.then.i119
    i32 8, label %if.then62.i
    i32 16, label %if.then89.i
  ]

if.else56.if.end135.i_crit_edge:                  ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.i

if.then.i119:                                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx90.i, align 1
  %96 = or i8 %95, 1
  store i8 %96, ptr %arrayidx90.i, align 1
  br label %if.end135.sink.split.i

if.then62.i:                                      ; preds = %if.else56
  %97 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx90.i, align 1
  %99 = or i8 %98, 2
  store i8 %99, ptr %arrayidx90.i, align 1
  %100 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %53, label %if.then62.i.if.end135.i_crit_edge [
    i8 0, label %if.then62.i.if.end135.sink.split.i_crit_edge
    i8 1, label %if.then79.i
  ]

if.then62.i.if.end135.sink.split.i_crit_edge:     ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.sink.split.i

if.then62.i.if.end135.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.i

if.then79.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.sink.split.i

if.then89.i:                                      ; preds = %if.else56
  %101 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx90.i, align 1
  %103 = or i8 %102, 3
  store i8 %103, ptr %arrayidx90.i, align 1
  %104 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %53, label %if.then89.i.if.end135.i_crit_edge [
    i8 0, label %if.then89.i.if.end135.sink.split.i_crit_edge
    i8 3, label %if.then124.i
  ]

if.then89.i.if.end135.sink.split.i_crit_edge:     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.sink.split.i

if.then89.i.if.end135.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.i

if.then124.i:                                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135.sink.split.i

if.end135.sink.split.i:                           ; preds = %if.then124.i, %if.then89.i.if.end135.sink.split.i_crit_edge, %if.then79.i, %if.then62.i.if.end135.sink.split.i_crit_edge, %if.then.i119
  %.sink.i120 = phi i8 [ -128, %if.then79.i ], [ -128, %if.then124.i ], [ -64, %if.then.i119 ], [ 64, %if.then62.i.if.end135.sink.split.i_crit_edge ], [ 64, %if.then89.i.if.end135.sink.split.i_crit_edge ]
  %105 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink.i120, ptr %arrayidx46.i, align 1
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.end135.sink.split.i, %if.then89.i.if.end135.i_crit_edge, %if.then62.i.if.end135.i_crit_edge, %if.else56.if.end135.i_crit_edge
  %106 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx140.i, align 1
  %108 = or i8 %107, 32
  store i8 %108, ptr %arrayidx140.i, align 1
  %109 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx148.i, align 1
  %111 = or i8 %110, 32
  store i8 %111, ptr %arrayidx148.i, align 1
  %112 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %arrayidx152.i, align 1
  %113 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx156.i, align 1
  %115 = or i8 %114, 16
  store i8 %115, ptr %arrayidx156.i, align 1
  %116 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx160.i, align 1
  %118 = or i8 %117, 15
  store i8 %118, ptr %arrayidx160.i, align 1
  %.sroa.speculated213 = select i1 %cmp.i117, i8 -56, i8 -120
  %.sroa.speculated210 = select i1 %cmp.i117, i8 24, i8 36
  %.sroa.speculated207 = select i1 %cmp.i117, i8 -32, i8 60
  %.sroa.speculated204 = select i1 %cmp.i117, i8 5, i8 6
  %.sroa.speculated201 = select i1 %cmp.i117, i8 -12, i8 50
  %.sroa.speculated198 = select i1 %cmp.i117, i8 8, i8 44
  %.sroa.speculated183 = select i1 %cmp.i117, i8 2, i8 -126
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.body192.peel.next.i.for.body.i121_crit_edge, %if.end135.i
  %ch.03.i = phi i32 [ 0, %if.end135.i ], [ %inc200.i, %for.body192.peel.next.i.for.body.i121_crit_edge ]
  %119 = ptrtoint ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  %121 = and i8 %120, -4
  store i8 %121, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  %122 = zext i32 %ch.03.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %ch.03.i, label %for.body.i121.for.body192.peel.next.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb174.i
    i32 2, label %sw.bb179.i
    i32 3, label %sw.bb184.i
  ]

for.body.i121.for.body192.peel.next.i_crit_edge:  ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body192.peel.next.i

sw.bb.i:                                          ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %123 = or i8 %121, 33
  br label %for.body192.peel.next.sink.split.i

sw.bb174.i:                                       ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %124 = or i8 %121, 32
  br label %for.body192.peel.next.sink.split.i

sw.bb179.i:                                       ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %125 = or i8 %120, 35
  br label %for.body192.peel.next.sink.split.i

sw.bb184.i:                                       ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %126 = or i8 %121, 34
  br label %for.body192.peel.next.sink.split.i

for.body192.peel.next.sink.split.i:               ; preds = %sw.bb184.i, %sw.bb179.i, %sw.bb174.i, %sw.bb.i
  %.sink12.i = phi i8 [ %126, %sw.bb184.i ], [ %125, %sw.bb179.i ], [ %124, %sw.bb174.i ], [ %123, %sw.bb.i ]
  %127 = ptrtoint ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.sink12.i, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  br label %for.body192.peel.next.i

for.body192.peel.next.i:                          ; preds = %for.body192.peel.next.sink.split.i, %for.body.i121.for.body192.peel.next.i_crit_edge
  %mul.i = shl i32 %ch.03.i, 4
  %128 = trunc i32 %mul.i to i8
  %conv197.i = or i8 %128, 1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i, i8 noundef zeroext %.sroa.speculated213) #5
  %129 = trunc i32 %mul.i to i8
  %conv197.i.1 = or i8 %129, 2
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.1, i8 noundef zeroext %.sroa.speculated210) #5
  %130 = trunc i32 %mul.i to i8
  %conv197.i.2 = or i8 %130, 3
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.2, i8 noundef zeroext %.sroa.speculated207) #5
  %131 = trunc i32 %mul.i to i8
  %conv197.i.3 = or i8 %131, 4
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.3, i8 noundef zeroext %.sroa.speculated204) #5
  %132 = trunc i32 %mul.i to i8
  %conv197.i.4 = or i8 %132, 5
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.4, i8 noundef zeroext %.sroa.speculated201) #5
  %133 = trunc i32 %mul.i to i8
  %conv197.i.5 = or i8 %133, 6
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.5, i8 noundef zeroext %.sroa.speculated198) #5
  %134 = trunc i32 %mul.i to i8
  %conv197.i.6 = or i8 %134, 7
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.6, i8 noundef zeroext -128) #5
  %135 = trunc i32 %mul.i to i8
  %conv197.i.7 = or i8 %135, 8
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.7, i8 noundef zeroext -128) #5
  %136 = trunc i32 %mul.i to i8
  %conv197.i.8 = or i8 %136, 9
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.8, i8 noundef zeroext -128) #5
  %137 = trunc i32 %mul.i to i8
  %conv197.i.9 = or i8 %137, 10
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.9, i8 noundef zeroext -128) #5
  %138 = trunc i32 %mul.i to i8
  %conv197.i.10 = or i8 %138, 11
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.10, i8 noundef zeroext %.sroa.speculated183) #5
  %139 = trunc i32 %mul.i to i8
  %conv197.i.11 = or i8 %139, 12
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.11, i8 noundef zeroext 6) #5
  %140 = trunc i32 %mul.i to i8
  %conv197.i.12 = or i8 %140, 13
  %141 = ptrtoint ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %cond.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.12, i8 noundef zeroext %142) #5
  %143 = trunc i32 %mul.i to i8
  %conv197.i.13 = or i8 %143, 14
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv197.i.13, i8 noundef zeroext 17) #5
  %inc200.i = add nuw nsw i32 %ch.03.i, 1
  %exitcond7.not.i = icmp eq i32 %inc200.i, 4
  br i1 %exitcond7.not.i, label %for.body192.peel.next.i.for.body205.i_crit_edge, label %for.body192.peel.next.i.for.body.i121_crit_edge

for.body192.peel.next.i.for.body.i121_crit_edge:  ; preds = %for.body192.peel.next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i121

for.body192.peel.next.i.for.body205.i_crit_edge:  ; preds = %for.body192.peel.next.i
  br label %for.body205.i

for.body205.i:                                    ; preds = %for.inc226.i.for.body205.i_crit_edge, %for.body192.peel.next.i.for.body205.i_crit_edge
  %i.14.i = phi i32 [ %inc227.i, %for.inc226.i.for.body205.i_crit_edge ], [ 64, %for.body192.peel.next.i.for.body205.i_crit_edge ]
  %144 = zext i32 %i.14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %i.14.i, label %if.end223.i [
    i32 64, label %for.body205.i.for.inc226.i_crit_edge
    i32 89, label %for.body205.i.for.inc226.i_crit_edge261
    i32 90, label %for.body205.i.for.inc226.i_crit_edge262
    i32 93, label %for.body205.i.for.inc226.i_crit_edge263
    i32 94, label %for.body205.i.for.inc226.i_crit_edge264
    i32 95, label %for.body205.i.for.inc226.i_crit_edge265
  ]

for.body205.i.for.inc226.i_crit_edge265:          ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

for.body205.i.for.inc226.i_crit_edge264:          ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

for.body205.i.for.inc226.i_crit_edge263:          ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

for.body205.i.for.inc226.i_crit_edge262:          ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

for.body205.i.for.inc226.i_crit_edge261:          ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

for.body205.i.for.inc226.i_crit_edge:             ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc226.i

if.end223.i:                                      ; preds = %for.body205.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv224.i = trunc i32 %i.14.i to i8
  %sub.i = add nsw i32 %i.14.i, -64
  %arrayidx225.i = getelementptr [54 x i8], ptr %tbl_tw2815_sfr.i, i32 0, i32 %sub.i
  %145 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx225.i, align 1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv58, i8 noundef zeroext %conv224.i, i8 noundef zeroext %146) #5
  br label %for.inc226.i

for.inc226.i:                                     ; preds = %if.end223.i, %for.body205.i.for.inc226.i_crit_edge, %for.body205.i.for.inc226.i_crit_edge261, %for.body205.i.for.inc226.i_crit_edge262, %for.body205.i.for.inc226.i_crit_edge263, %for.body205.i.for.inc226.i_crit_edge264, %for.body205.i.for.inc226.i_crit_edge265
  %inc227.i = add nuw nsw i32 %i.14.i, 1
  %exitcond8.not.i = icmp eq i32 %inc227.i, 118
  br i1 %exitcond8.not.i, label %tw2815_setup.exit, label %for.inc226.i.for.body205.i_crit_edge

for.inc226.i.for.body205.i_crit_edge:             ; preds = %for.inc226.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body205.i

tw2815_setup.exit:                                ; preds = %for.inc226.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 54, ptr nonnull %tbl_tw2815_sfr.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tbl_pal_tw2815_common.i.sroa.20)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tbl_ntsc_tw2815_common.i.sroa.20)
  br label %for.inc62

for.inc62:                                        ; preds = %tw2815_setup.exit, %tw2864_setup.exit, %tw2865_setup.exit
  %inc63 = add nuw nsw i32 %i.1133, 1
  %147 = ptrtoint ptr %tw28_cnt to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %tw28_cnt, align 1
  %conv36 = zext i8 %148 to i32
  %cmp37 = icmp ult i32 %inc63, %conv36
  br i1 %cmp37, label %for.inc62.for.body39_crit_edge, label %for.inc62.cleanup_crit_edge

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc62.for.body39_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %saa712x_setup.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %saa712x_setup.exit.cleanup_crit_edge ], [ 0, %for.inc62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @solo_i2c_readbyte(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw28_get_video_status(ptr noundef %solo_dev, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div12 = lshr i8 %ch, 2
  %0 = and i8 %ch, 3
  %conv4 = zext i8 %div12 to i32
  %tw2815.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %1 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tw2815.i, align 2
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %conv4
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv1.i = add nuw nsw i8 %div12, 40
  %tw6x_off.tw_off.i = select i1 %tobool.not.i, i8 -3, i8 90
  %call4.i = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i) #5
  %3 = and i8 %call4.i, 15
  %conv7 = zext i8 %3 to i32
  %conv8 = zext i8 %0 to i32
  %4 = lshr i32 %conv7, %conv8
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tw28_has_sharpness(ptr nocapture noundef readonly %solo_dev, i8 noundef zeroext %ch) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tw2815 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %0 = ptrtoint ptr %tw2815 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tw2815, align 2
  %conv = zext i8 %1 to i32
  %2 = lshr i8 %ch, 2
  %div = zext i8 %2 to i32
  %shl = shl nuw i32 1, %div
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw28_set_ctrl_val(ptr noundef %solo_dev, i32 noundef %ctrl, i8 noundef zeroext %ch, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div155 = lshr i8 %ch, 2
  %0 = and i8 %ch, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %1 = icmp ugt i32 %val, 255
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %ctrl, label %if.end.cleanup_crit_edge [
    i32 9963803, label %sw.bb
    i32 9963779, label %sw.bb29
    i32 9963778, label %sw.bb50
    i32 9963777, label %sw.bb77
    i32 9963776, label %sw.bb88
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %tw2815 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %3 = ptrtoint ptr %tw2815 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tw2815, align 2
  %conv7 = zext i8 %4 to i32
  %conv8 = zext i8 %div155 to i32
  %shl = shl nuw i32 1, %conv8
  %and = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i8 %div155, 40
  %shl13 = shl i8 %div155, 4
  %or = or i8 %shl13, 3
  %call = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %add, i8 noundef zeroext %or) #5
  %5 = and i8 %call, -16
  %6 = trunc i32 %val to i8
  %conv20 = or i8 %5, %6
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %add, i8 noundef zeroext %or, i8 noundef zeroext %conv20) #5
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tw281530 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %7 = ptrtoint ptr %tw281530 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tw281530, align 2
  %conv31 = zext i8 %8 to i32
  %conv32 = zext i8 %div155 to i32
  %shl33 = shl nuw i32 1, %conv32
  %and34 = and i32 %shl33, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %conv39 = trunc i32 %val to i8
  %conv37 = xor i8 %conv39, -128
  %sval.0 = select i1 %tobool35.not, i8 %conv37, i8 %conv39
  %9 = shl nuw nsw i8 %0, 4
  %conv1.i = add nuw nsw i8 %div155, 40
  %tw6x_off.tw_off.i.v = select i1 %tobool35.not, i8 6, i8 7
  %tw6x_off.tw_off.i = or i8 %tw6x_off.tw_off.i.v, %9
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i, i8 noundef zeroext %sval.0) #5
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  %tw281551 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %10 = ptrtoint ptr %tw281551 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tw281551, align 2
  %conv52 = zext i8 %11 to i32
  %conv53 = zext i8 %div155 to i32
  %shl54 = shl nuw i32 1, %conv53
  %and55 = and i32 %shl54, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %sw.bb50.if.end66_crit_edge

sw.bb50.if.end66_crit_edge:                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = shl nuw nsw i8 %0, 4
  %.pre177 = trunc i32 %val to i8
  %.pre178 = add nuw nsw i8 %div155, 40
  br label %if.end66

if.then57:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  %add59 = add nuw nsw i8 %div155, 40
  %12 = shl nuw nsw i8 %0, 4
  %13 = or i8 %12, 4
  %conv65 = trunc i32 %val to i8
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %add59, i8 noundef zeroext %13, i8 noundef zeroext %conv65) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %sw.bb50.if.end66_crit_edge
  %conv1.i161.pre-phi = phi i8 [ %.pre178, %sw.bb50.if.end66_crit_edge ], [ %add59, %if.then57 ]
  %conv76.pre-phi = phi i8 [ %.pre177, %sw.bb50.if.end66_crit_edge ], [ %conv65, %if.then57 ]
  %.pre-phi = phi i8 [ %.pre, %sw.bb50.if.end66_crit_edge ], [ %12, %if.then57 ]
  %14 = ptrtoint ptr %tw281551 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tw281551, align 2
  %conv.i157 = zext i8 %15 to i32
  %and.i159 = and i32 %shl54, %conv.i157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  %tw6x_off.tw_off.i162.v = select i1 %tobool.not.i160, i8 5, i8 8
  %tw6x_off.tw_off.i162 = or i8 %tw6x_off.tw_off.i162.v, %.pre-phi
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i161.pre-phi, i8 noundef zeroext %tw6x_off.tw_off.i162, i8 noundef zeroext %conv76.pre-phi) #5
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv78 = zext i8 %div155 to i32
  %16 = shl nuw nsw i8 %0, 4
  %conv87 = trunc i32 %val to i8
  %tw2815.i163 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %17 = ptrtoint ptr %tw2815.i163 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tw2815.i163, align 2
  %conv.i164 = zext i8 %18 to i32
  %shl.i165 = shl nuw i32 1, %conv78
  %and.i166 = and i32 %shl.i165, %conv.i164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp eq i32 %and.i166, 0
  %conv1.i168 = add nuw nsw i8 %div155, 40
  %tw6x_off.tw_off.i169.v = select i1 %tobool.not.i167, i8 2, i8 9
  %tw6x_off.tw_off.i169 = or i8 %tw6x_off.tw_off.i169.v, %16
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i168, i8 noundef zeroext %tw6x_off.tw_off.i169, i8 noundef zeroext %conv87) #5
  br label %cleanup

sw.bb88:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tw281589 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %19 = ptrtoint ptr %tw281589 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tw281589, align 2
  %conv90 = zext i8 %20 to i32
  %conv91 = zext i8 %div155 to i32
  %shl92 = shl nuw i32 1, %conv91
  %and93 = and i32 %shl92, %conv90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %conv99 = trunc i32 %val to i8
  %conv97 = xor i8 %conv99, -128
  %sval.1 = select i1 %tobool94.not, i8 %conv97, i8 %conv99
  %21 = shl nuw nsw i8 %0, 4
  %conv1.i175 = add nuw nsw i8 %div155, 40
  %tw6x_off.tw_off.i176.v = select i1 %tobool94.not, i8 1, i8 10
  %tw6x_off.tw_off.i176 = or i8 %tw6x_off.tw_off.i176.v, %21
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i175, i8 noundef zeroext %tw6x_off.tw_off.i176, i8 noundef zeroext %sval.1) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb88, %sw.bb77, %if.end66, %sw.bb29, %if.then9, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb88 ], [ 0, %sw.bb77 ], [ 0, %if.end66 ], [ 0, %sw.bb29 ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_i2c_writebyte(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw28_get_ctrl_val(ptr noundef %solo_dev, i32 noundef %ctrl, i8 noundef zeroext %ch, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div119 = lshr i8 %ch, 2
  %0 = and i8 %ch, 3
  %1 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %ctrl, label %entry.cleanup_crit_edge [
    i32 9963803, label %sw.bb
    i32 9963779, label %sw.bb13
    i32 9963778, label %sw.bb36
    i32 9963777, label %sw.bb48
    i32 9963776, label %sw.bb60
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tw2815 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %2 = ptrtoint ptr %tw2815 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tw2815, align 2
  %conv4 = zext i8 %3 to i32
  %conv5 = zext i8 %div119 to i32
  %shl = shl nuw i32 1, %conv5
  %and = and i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i8 %div119, 40
  %shl9 = shl i8 %div119, 4
  %or = or i8 %shl9, 3
  %call = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %add, i8 noundef zeroext %or) #5
  %4 = and i8 %call, 15
  %and12 = zext i8 %4 to i32
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i8 %div119 to i32
  %5 = shl nuw nsw i8 %0, 4
  %tw2815.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %6 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tw2815.i, align 2
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv14
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv1.i = add nuw nsw i8 %div119, 40
  %tw6x_off.tw_off.i.v = select i1 %tobool.not.i, i8 6, i8 7
  %tw6x_off.tw_off.i = or i8 %tw6x_off.tw_off.i.v, %5
  %call4.i = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i) #5
  %8 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tw2815.i, align 2
  %conv25 = zext i8 %9 to i32
  %and28 = and i32 %shl.i, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %conv31 = zext i8 %call4.i to i32
  %add32 = add nuw nsw i32 %conv31, 128
  %spec.select = select i1 %tobool29.not, i32 %add32, i32 %conv31
  br label %cleanup.sink.split

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv37 = zext i8 %div119 to i32
  %10 = shl nuw nsw i8 %0, 4
  %tw2815.i120 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %11 = ptrtoint ptr %tw2815.i120 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tw2815.i120, align 2
  %conv.i121 = zext i8 %12 to i32
  %shl.i122 = shl nuw i32 1, %conv37
  %and.i123 = and i32 %shl.i122, %conv.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.not.i124 = icmp eq i32 %and.i123, 0
  %conv1.i125 = add nuw nsw i8 %div119, 40
  %tw6x_off.tw_off.i126.v = select i1 %tobool.not.i124, i8 4, i8 8
  %tw6x_off.tw_off.i126 = or i8 %tw6x_off.tw_off.i126.v, %10
  %call4.i127 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i125, i8 noundef zeroext %tw6x_off.tw_off.i126) #5
  %conv47 = zext i8 %call4.i127 to i32
  br label %cleanup.sink.split

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv49 = zext i8 %div119 to i32
  %13 = shl nuw nsw i8 %0, 4
  %tw2815.i128 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %14 = ptrtoint ptr %tw2815.i128 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tw2815.i128, align 2
  %conv.i129 = zext i8 %15 to i32
  %shl.i130 = shl nuw i32 1, %conv49
  %and.i131 = and i32 %shl.i130, %conv.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  %conv1.i133 = add nuw nsw i8 %div119, 40
  %tw6x_off.tw_off.i134.v = select i1 %tobool.not.i132, i8 2, i8 9
  %tw6x_off.tw_off.i134 = or i8 %tw6x_off.tw_off.i134.v, %13
  %call4.i135 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i133, i8 noundef zeroext %tw6x_off.tw_off.i134) #5
  %conv59 = zext i8 %call4.i135 to i32
  br label %cleanup.sink.split

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv61 = zext i8 %div119 to i32
  %16 = shl nuw nsw i8 %0, 4
  %tw2815.i136 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %17 = ptrtoint ptr %tw2815.i136 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tw2815.i136, align 2
  %conv.i137 = zext i8 %18 to i32
  %shl.i138 = shl nuw i32 1, %conv61
  %and.i139 = and i32 %shl.i138, %conv.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  %conv1.i141 = add nuw nsw i8 %div119, 40
  %tw6x_off.tw_off.i142.v = select i1 %tobool.not.i140, i8 1, i8 10
  %tw6x_off.tw_off.i142 = or i8 %tw6x_off.tw_off.i142.v, %16
  %call4.i143 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i141, i8 noundef zeroext %tw6x_off.tw_off.i142) #5
  %19 = ptrtoint ptr %tw2815.i136 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tw2815.i136, align 2
  %conv72 = zext i8 %20 to i32
  %and75 = and i32 %shl.i138, %conv72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %conv78 = zext i8 %call4.i143 to i32
  %add79 = add nuw nsw i32 %conv78, 128
  %spec.select144 = select i1 %tobool76.not, i32 %add79, i32 %conv78
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb60, %sw.bb48, %sw.bb36, %sw.bb13, %if.then, %sw.bb.cleanup.sink.split_crit_edge
  %conv47.sink = phi i32 [ %conv47, %sw.bb36 ], [ %conv59, %sw.bb48 ], [ %and12, %if.then ], [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ %spec.select, %sw.bb13 ], [ %spec.select144, %sw.bb60 ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv47.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tw28_get_audio_gain(ptr noundef %solo_dev, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div25 = lshr i8 %ch, 2
  %0 = and i8 %ch, 2
  %conv4 = zext i8 %div25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not = icmp eq i8 %0, 0
  %conv7 = select i1 %cmp.not, i8 -48, i8 -47
  %conv13 = select i1 %cmp.not, i8 96, i8 97
  %tw2815.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %1 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tw2815.i, align 2
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %conv4
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv1.i = add nuw nsw i8 %div25, 40
  %tw6x_off.tw_off.i = select i1 %tobool.not.i, i8 %conv7, i8 %conv13
  %call4.i = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i) #5
  %3 = and i8 %ch, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = lshr i8 %call4.i, 4
  %5 = and i8 %call4.i, 15
  %cond18.in = select i1 %tobool.not, i8 %5, i8 %4
  ret i8 %cond18.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw28_set_audio_gain(ptr noundef %solo_dev, i8 noundef zeroext %ch, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div49 = lshr i8 %ch, 2
  %0 = and i8 %ch, 2
  %conv4 = zext i8 %div49 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not = icmp eq i8 %0, 0
  %conv7 = select i1 %cmp.not, i8 -48, i8 -47
  %conv13 = select i1 %cmp.not, i8 96, i8 97
  %tw2815.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 14
  %1 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tw2815.i, align 2
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 1, %conv4
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv1.i = add nuw nsw i8 %div49, 40
  %tw6x_off.tw_off.i = select i1 %tobool.not.i, i8 %conv7, i8 %conv13
  %call4.i = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i) #5
  %3 = and i8 %ch, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %shl = shl i8 %val, 4
  %cond17 = select i1 %tobool.not, i8 -16, i8 15
  %cond23 = select i1 %tobool.not, i8 %val, i8 %shl
  %and = and i8 %call4.i, %cond17
  %or = or i8 %and, %cond23
  %4 = ptrtoint ptr %tw2815.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tw2815.i, align 2
  %conv.i51 = zext i8 %5 to i32
  %and.i53 = and i32 %shl.i, %conv.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  %tw6x_off.tw_off.i56 = select i1 %tobool.not.i54, i8 %conv7, i8 %conv13
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %conv1.i, i8 noundef zeroext %tw6x_off.tw_off.i56, i8 noundef zeroext %or) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw_write_and_verify(ptr noundef %solo_dev, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %val)
  %cmp2 = icmp eq i8 %call, %val
  br i1 %cmp2, label %entry.cleanup5_crit_edge, label %if.end

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end:                                           ; preds = %entry
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) #5
  %call4 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  %call.1 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call.1, i8 %val)
  %cmp2.1 = icmp eq i8 %call.1, %val
  br i1 %cmp2.1, label %if.end.cleanup5_crit_edge, label %if.end.1

if.end.cleanup5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end.1:                                         ; preds = %if.end
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) #5
  %call4.1 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  %call.2 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call.2, i8 %val)
  %cmp2.2 = icmp eq i8 %call.2, %val
  br i1 %cmp2.2, label %if.end.1.cleanup5_crit_edge, label %if.end.2

if.end.1.cleanup5_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end.2:                                         ; preds = %if.end.1
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) #5
  %call4.2 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  %call.3 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call.3, i8 %val)
  %cmp2.3 = icmp eq i8 %call.3, %val
  br i1 %cmp2.3, label %if.end.2.cleanup5_crit_edge, label %if.end.3

if.end.2.cleanup5_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end.3:                                         ; preds = %if.end.2
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) #5
  %call4.3 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  %call.4 = tail call zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call.4, i8 %val)
  %cmp2.4 = icmp eq i8 %call.4, %val
  br i1 %cmp2.4, label %if.end.3.cleanup5_crit_edge, label %if.end.4

if.end.3.cleanup5_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef 0, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %val) #5
  %call4.4 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  br label %cleanup5

cleanup5:                                         ; preds = %if.end.4, %if.end.3.cleanup5_crit_edge, %if.end.2.cleanup5_crit_edge, %if.end.1.cleanup5_crit_edge, %if.end.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 616, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @solo_tw28_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @solo_tw28_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @saa712x_setup.saa7128_regs_ntsc, !9, !"saa7128_regs_ntsc", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 526, i32 18}
!10 = !{ptr @saa712x_setup.saa7128_regs_pal, !11, !"saa7128_regs_pal", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 549, i32 5}
!12 = !{ptr @tbl_tw2865_pal_template, !13, !"tbl_tw2865_pal_template", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 134, i32 17}
!14 = !{ptr @tbl_tw2865_ntsc_template, !15, !"tbl_tw2865_ntsc_template", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 99, i32 17}
!16 = !{ptr @tbl_tw2864_pal_template, !17, !"tbl_tw2864_pal_template", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 64, i32 17}
!18 = !{ptr @tbl_tw2864_ntsc_template, !19, !"tbl_tw2864_ntsc_template", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/solo6x10/solo6x10-tw28.c", i32 29, i32 17}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
