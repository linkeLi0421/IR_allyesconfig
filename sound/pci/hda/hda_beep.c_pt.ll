; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_beep.c_pt.bc'
source_filename = "../sound/pci/hda/hda_beep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_hda_enable_beep_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_enable_beep_device\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_enable_beep_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_enable_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_enable_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_enable_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_attach_beep_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_attach_beep_device\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_attach_beep_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_attach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_attach_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_attach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_detach_beep_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_detach_beep_device\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_detach_beep_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_detach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_detach_beep_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_detach_beep_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_mixer_amp_switch_get_beep\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_mixer_amp_switch_get_beep\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_mixer_amp_switch_get_beep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_mixer_amp_switch_get_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_mixer_amp_switch_get_beep\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_mixer_amp_switch_get_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_mixer_amp_switch_put_beep\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_mixer_amp_switch_put_beep\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_mixer_amp_switch_put_beep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_mixer_amp_switch_put_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_mixer_amp_switch_put_beep\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_mixer_amp_switch_put_beep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_beep = type { ptr, ptr, [32 x i8], i32, i16, i8, %struct.work_struct, %struct.mutex, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }

@__kstrtab_snd_hda_enable_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_enable_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_enable_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_enable_beep_device to i32), ptr @__kstrtab_snd_hda_enable_beep_device, ptr @__kstrtabns_snd_hda_enable_beep_device }, section "___ksymtab_gpl+snd_hda_enable_beep_device", align 4
@snd_hda_attach_beep_device.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @beep_dev_free, ptr @beep_dev_register, ptr @beep_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"beep\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"card%d/codec#%d/beep0\00", [42 x i8] zeroinitializer }, align 32
@snd_hda_attach_beep_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&beep->beep_work)\00", [60 x i8] zeroinitializer }, align 32
@snd_hda_attach_beep_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&beep->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDA Digital PCBeep\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hda_attach_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_attach_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_attach_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_attach_beep_device to i32), ptr @__kstrtab_snd_hda_attach_beep_device, ptr @__kstrtabns_snd_hda_attach_beep_device }, section "___ksymtab_gpl+snd_hda_attach_beep_device", align 4
@__kstrtab_snd_hda_detach_beep_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_detach_beep_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_detach_beep_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_detach_beep_device to i32), ptr @__kstrtab_snd_hda_detach_beep_device, ptr @__kstrtabns_snd_hda_detach_beep_device }, section "___ksymtab_gpl+snd_hda_detach_beep_device", align 4
@__kstrtab_snd_hda_mixer_amp_switch_get_beep = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_mixer_amp_switch_get_beep = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_mixer_amp_switch_get_beep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_mixer_amp_switch_get_beep to i32), ptr @__kstrtab_snd_hda_mixer_amp_switch_get_beep, ptr @__kstrtabns_snd_hda_mixer_amp_switch_get_beep }, section "___ksymtab_gpl+snd_hda_mixer_amp_switch_get_beep", align 4
@__kstrtab_snd_hda_mixer_amp_switch_put_beep = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_mixer_amp_switch_put_beep = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_mixer_amp_switch_put_beep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_mixer_amp_switch_put_beep to i32), ptr @__kstrtab_snd_hda_mixer_amp_switch_put_beep, ptr @__kstrtabns_snd_hda_mixer_amp_switch_put_beep }, section "___ksymtab_gpl+snd_hda_mixer_amp_switch_put_beep", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 195, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 204, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 213, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 222, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 223, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [28 x i8] c"../sound/pci/hda/hda_beep.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 232, i32 20 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_snd_hda_attach_beep_device, ptr @__ksymtab_snd_hda_detach_beep_device, ptr @__ksymtab_snd_hda_enable_beep_device, ptr @__ksymtab_snd_hda_mixer_amp_switch_get_beep, ptr @__ksymtab_snd_hda_mixer_amp_switch_put_beep, ptr @snd_hda_attach_beep_device.ops, ptr @.str, ptr @.str.1, ptr @snd_hda_attach_beep_device.__key, ptr @.str.2, ptr @snd_hda_attach_beep_device.__key.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_attach_beep_device.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_attach_beep_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_attach_beep_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_enable_beep_device(ptr nocapture noundef readonly %codec, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %beep1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 12
  %0 = ptrtoint ptr %beep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %beep1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2 = icmp ne i32 %enable, 0
  %enabled = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 2
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %4 = icmp eq i8 %3, 0
  %cmp.not = xor i1 %tobool2, %4
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %bf.shl = select i1 %tobool2, i8 64, i8 0
  %bf.clear7 = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear7, %bf.shl
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %enabled, align 2
  br i1 %tobool2, label %if.then4.cleanup_crit_edge, label %if.then9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.then4
  %beep_work.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %beep_work.i) #4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %enabled, align 2
  %7 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  %codec1.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %codec1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %codec1.i.i, align 4
  %nid.c50.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %nid.c50.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nid.c50.i.i, align 4
  %call.i51.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %9, i16 noundef zeroext %11, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load14.i.i = load i8, ptr %enabled, align 2
  %13 = and i8 %bf.load14.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool18.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then19.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then19.i.i:                                    ; preds = %if.then.i
  %bf.clear22.i.i = and i8 %bf.load14.i.i, -17
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.clear22.i.i, ptr %enabled, align 2
  %power_hook24.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %power_hook24.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %power_hook24.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %16, null
  br i1 %tobool25.not.i.i, label %if.then19.i.i.if.end28.i.i_crit_edge, label %if.then26.i.i

if.then19.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %16(ptr noundef nonnull %1, i1 noundef zeroext false) #4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %if.then19.i.i.if.end28.i.i_crit_edge
  %call30.i.i = tail call i32 @snd_hdac_power_down(ptr noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28.i.i, %if.then.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %if.end28.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_attach_beep_device(ptr noundef %codec, i32 noundef %nid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_get_bool_hint(ptr noundef %codec, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %beep_mode = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 13
  %0 = ptrtoint ptr %beep_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beep_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 188) #7
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %phys = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 2
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %addr = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 3
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %8)
  %conv = trunc i32 %nid to i16
  %shl1.i.i = shl i32 %nid, 20
  %or2.i.i = or i32 %shl1.i.i, 986624
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef 1) #4
  %nid10 = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %nid10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %nid10, align 4
  %codec11 = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %codec11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %codec, ptr %codec11, align 4
  %beep12 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 12
  %11 = ptrtoint ptr %beep12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %beep12, align 4
  %beep_work = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %beep_work, i32 noundef 0) #4
  %12 = ptrtoint ptr %beep_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %beep_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_hda_attach_beep_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry16 = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry16, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_hda_generate_beep, ptr %func, align 4
  %mutex = getelementptr inbounds %struct.hda_beep, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_hda_attach_beep_device.__key.3) #4
  %call21 = tail call ptr @input_allocate_device() #4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end6.err_free_crit_edge, label %if.end24

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

if.end24:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %call21, align 8
  %phys27 = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 1
  %17 = ptrtoint ptr %phys27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %phys, ptr %phys27, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %id, align 4
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 28
  %parent = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 40, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %card_dev, ptr %parent, align 8
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %22 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vendor_id, align 8
  %shr = lshr i32 %23, 16
  %conv29 = trunc i32 %shr to i16
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv29, ptr %vendor, align 2
  %25 = load i32, ptr %vendor_id, align 8
  %conv33 = trunc i32 %25 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv33, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %version, align 2
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 5
  %28 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262144, ptr %evbit, align 8
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 11
  %29 = ptrtoint ptr %sndbit to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %sndbit, align 8
  %event = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 34
  %30 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @snd_hda_beep_event, ptr %event, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call21, i32 0, i32 40, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call21, ptr %call7.i.i, align 8
  %33 = load ptr, ptr %card, align 4
  %call39 = tail call i32 @snd_device_new(ptr noundef %33, i32 noundef 10, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_hda_attach_beep_device.ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %err_input, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_input:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_free_device(ptr noundef %35) #4
  br label %err_free

err_free:                                         ; preds = %err_input, %if.end6.err_free_crit_edge
  %err.0 = phi i32 [ %call39, %err_input ], [ -12, %if.end6.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %36 = ptrtoint ptr %beep12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %beep12, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end24.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %codec = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec, align 4
  %beep1 = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %beep1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %beep1, align 4
  tail call void @kfree(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_dev_register(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @input_register_device(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %registered = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %registered, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %registered, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %registered = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %registered, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_unregister_device(ptr noundef %4) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_free_device(ptr noundef %4) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %beep_work.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %beep_work.i) #4
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %registered, align 2
  %6 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.turn_off_beep.exit_crit_edge, label %if.then.i

if.end.turn_off_beep.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %turn_off_beep.exit

if.then.i:                                        ; preds = %if.end
  %codec1.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %codec1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codec1.i.i, align 4
  %nid.c50.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %nid.c50.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nid.c50.i.i, align 4
  %call.i51.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %8, i16 noundef zeroext %10, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %11 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load14.i.i = load i8, ptr %registered, align 2
  %12 = and i8 %bf.load14.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool18.not.i.i, label %if.then.i.turn_off_beep.exit_crit_edge, label %if.then19.i.i

if.then.i.turn_off_beep.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %turn_off_beep.exit

if.then19.i.i:                                    ; preds = %if.then.i
  %bf.clear22.i.i = and i8 %bf.load14.i.i, -17
  %13 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear22.i.i, ptr %registered, align 2
  %power_hook24.i.i = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %power_hook24.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_hook24.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %15, null
  br i1 %tobool25.not.i.i, label %if.then19.i.i.if.end28.i.i_crit_edge, label %if.then26.i.i

if.then19.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %15(ptr noundef %1, i1 noundef zeroext false) #4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %if.then19.i.i.if.end28.i.i_crit_edge
  %call30.i.i = tail call i32 @snd_hdac_power_down(ptr noundef %8) #4
  br label %turn_off_beep.exit

turn_off_beep.exit:                               ; preds = %if.end28.i.i, %if.then.i.turn_off_beep.exit_crit_edge, %if.end.turn_off_beep.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_bool_hint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_hda_generate_beep(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %work, i32 -2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %enabled, align 2
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %tone = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %tone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tone, align 4
  %codec1.i = getelementptr i8, ptr %work, i32 -44
  %4 = ptrtoint ptr %codec1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true12.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %enabled, align 2
  %7 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %if.then.i, label %if.end31.critedge48.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 @snd_hdac_power_up(ptr noundef %5) #4
  %power_hook.i = getelementptr i8, ptr %work, i32 136
  %8 = ptrtoint ptr %power_hook.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_hook.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %add.ptr, i1 noundef zeroext true) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load7.i = load i8, ptr %enabled, align 2
  %bf.set.i = or i8 %bf.load7.i, 16
  store i8 %bf.set.i, ptr %enabled, align 2
  %nid.c.i = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %nid.c.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nid.c.i, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %12, i32 noundef 0, i32 noundef 1802, i32 noundef %3) #4
  br label %if.end

land.lhs.true12.critedge.i:                       ; preds = %if.then
  %nid.c50.i = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %nid.c50.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nid.c50.i, align 4
  %call.i51.i = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %14, i32 noundef 0, i32 noundef 1802, i32 noundef 0) #4
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load14.i = load i8, ptr %enabled, align 2
  %16 = and i8 %bf.load14.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.i = icmp eq i8 %16, 0
  br i1 %tobool18.not.i, label %land.lhs.true12.critedge.i.if.end_crit_edge, label %if.then19.i

land.lhs.true12.critedge.i.if.end_crit_edge:      ; preds = %land.lhs.true12.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then19.i:                                      ; preds = %land.lhs.true12.critedge.i
  %bf.clear22.i = and i8 %bf.load14.i, -17
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.clear22.i, ptr %enabled, align 2
  %power_hook24.i = getelementptr i8, ptr %work, i32 136
  %18 = ptrtoint ptr %power_hook24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %power_hook24.i, align 4
  %tobool25.not.i = icmp eq ptr %19, null
  br i1 %tobool25.not.i, label %if.then19.i.if.end28.i_crit_edge, label %if.then26.i

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %19(ptr noundef %add.ptr, i1 noundef zeroext false) #4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.then19.i.if.end28.i_crit_edge
  %call30.i = tail call i32 @snd_hdac_power_down(ptr noundef %5) #4
  br label %if.end

if.end31.critedge48.i:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %nid.c49.i = getelementptr i8, ptr %work, i32 -4
  %20 = ptrtoint ptr %nid.c49.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nid.c49.i, align 4
  %call.i52.i = tail call i32 @snd_hdac_codec_write(ptr noundef %5, i16 noundef zeroext %21, i32 noundef 0, i32 noundef 1802, i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.end31.critedge48.i, %if.end28.i, %land.lhs.true12.critedge.i.if.end_crit_edge, %if.end.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hda_beep_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %hz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz)
  %tobool.not = icmp eq i32 %hz, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 1000
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %hz.addr.0 = phi i32 [ %hz, %entry.sw.bb1_crit_edge ], [ %spec.store.select, %sw.bb ]
  %linear_tone = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %linear_tone to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %linear_tone, align 2
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hz.addr.0)
  %cmp.i16 = icmp slt i32 %hz.addr.0, 1
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb1
  br i1 %cmp.i16, label %if.then3.sw.epilog_crit_edge, label %if.end.i

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then3
  %mul.i = mul i32 %hz.addr.0, 1000
  %add.i = add i32 %mul.i, -70313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp1.i = icmp slt i32 %add.i, 0
  br i1 %cmp1.i, label %if.end.i.sw.epilog_crit_edge, label %if.else.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11906249, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 11906249
  br i1 %cmp3.i, label %if.else.i.sw.epilog_crit_edge, label %if.else5.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.neg1.i = udiv i32 %add.i, 46875
  %sub6.i = sub nuw nsw i32 255, %div.neg1.i
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  br i1 %cmp.i16, label %if.else.sw.epilog_crit_edge, label %if.end.i18

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i18:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %hz.addr.0)
  %cmp1.i17 = icmp ult i32 %hz.addr.0, 47
  br i1 %cmp1.i17, label %if.end.i18.sw.epilog_crit_edge, label %if.end3.i

if.end.i18.sw.epilog_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  %div1.i = udiv i32 12000, %hz.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %hz.addr.0)
  %cmp4.i = icmp ugt i32 %hz.addr.0, 12000
  %.div.i = select i1 %cmp4.i, i32 1, i32 %div1.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3.i, %if.end.i18.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.else5.i, %if.else.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then3.sw.epilog_crit_edge
  %retval.0.i.sink = phi i32 [ 0, %if.then3.sw.epilog_crit_edge ], [ %sub6.i, %if.else5.i ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 1, %if.else.i.sw.epilog_crit_edge ], [ 0, %if.else.sw.epilog_crit_edge ], [ 255, %if.end.i18.sw.epilog_crit_edge ], [ %.div.i, %if.end3.i ]
  %tone = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %tone to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i.sink, ptr %tone, align 4
  %beep_work = getelementptr inbounds %struct.hda_beep, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %beep_work) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hda_detach_beep_device(ptr nocapture noundef readonly %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %shutdown = getelementptr inbounds %struct.hda_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %shutdown, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %beep = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 12
  %4 = ptrtoint ptr %beep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %beep, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  tail call void @snd_device_free(ptr noundef %7, ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_mixer_amp_switch_get_beep(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %beep1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %beep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beep1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.hda_beep, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %enabled, align 2
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %conv.i = trunc i32 %5 to i16
  %shr.i = lshr i32 %5, 18
  %and2.i = and i32 %shr.i, 1
  %call.i = tail call i32 @query_amp_caps(ptr noundef %1, i16 noundef zeroext %conv.i, i32 noundef %and2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp slt i32 %call.i, 0
  br i1 %tobool.i, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %8 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load7 = load i8, ptr %enabled, align 2
  %bf.lshr8 = lshr i8 %bf.load7, 6
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = zext i8 %bf.clear9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast10, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %11 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load15 = load i8, ptr %enabled, align 2
  %bf.lshr16 = lshr i8 %bf.load15, 6
  %bf.clear17 = and i8 %bf.lshr16, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %value19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx20 = getelementptr [128 x i32], ptr %value19, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.cast18, ptr %arrayidx20, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %entry.if.end22_crit_edge
  %call23 = tail call i32 @snd_hda_mixer_amp_switch_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_mixer_amp_switch_put_beep(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %beep1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %beep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beep1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then:                                          ; preds = %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %incdec.ptr = getelementptr i32, ptr %value, i32 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %enable.0 = phi i32 [ %8, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %valp.0 = phi ptr [ %incdec.ptr, %if.then5 ], [ %value, %if.then.if.end_crit_edge ]
  %9 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %valp.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valp.0, align 4
  %or10 = or i32 %11, %enable.0
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %enable.1 = phi i32 [ %or10, %if.then9 ], [ %enable.0, %if.end.if.end11_crit_edge ]
  %call = tail call i32 @snd_hda_enable_beep_device(ptr noundef %1, i32 noundef %enable.1)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry.if.end12_crit_edge
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %14 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private_value.i, align 4
  %conv.i = trunc i32 %15 to i16
  %shr.i = lshr i32 %15, 18
  %and2.i = and i32 %shr.i, 1
  %call.i = tail call i32 @query_amp_caps(ptr noundef %13, i16 noundef zeroext %conv.i, i32 noundef %and2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp slt i32 %call.i, 0
  br i1 %tobool.i, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = tail call i32 @snd_hda_mixer_amp_switch_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_mixer_amp_switch_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_snd_hda_enable_beep_device, !1, !"__ksymtab_snd_hda_enable_beep_device", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_beep.c", i32 149, i32 1}
!2 = !{ptr @snd_hda_attach_beep_device.ops, !3, !"ops", i1 false, i1 false}
!3 = !{!"../sound/pci/hda/hda_beep.c", i32 195, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/hda/hda_beep.c", i32 204, i32 36}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/hda/hda_beep.c", i32 213, i32 3}
!8 = !{ptr @snd_hda_attach_beep_device.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_beep.c", i32 222, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_hda_attach_beep_device.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/hda_beep.c", i32 223, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/hda/hda_beep.c", i32 232, i32 20}
!16 = !{ptr @__ksymtab_snd_hda_attach_beep_device, !17, !"__ksymtab_snd_hda_attach_beep_device", i1 false, i1 false}
!17 = !{!"../sound/pci/hda/hda_beep.c", i32 261, i32 1}
!18 = !{ptr @__ksymtab_snd_hda_detach_beep_device, !19, !"__ksymtab_snd_hda_detach_beep_device", i1 false, i1 false}
!19 = !{!"../sound/pci/hda/hda_beep.c", i32 272, i32 1}
!20 = !{ptr @__ksymtab_snd_hda_mixer_amp_switch_get_beep, !21, !"__ksymtab_snd_hda_mixer_amp_switch_get_beep", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/hda_beep.c", i32 304, i32 1}
!22 = !{ptr @__ksymtab_snd_hda_mixer_amp_switch_put_beep, !23, !"__ksymtab_snd_hda_mixer_amp_switch_put_beep", i1 false, i1 false}
!23 = !{!"../sound/pci/hda/hda_beep.c", i32 332, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
