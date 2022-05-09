; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice.c_pt.bc'
source_filename = "../sound/firewire/dice/dice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.fw_csr_iterator = type { ptr, ptr }
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
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }

@__UNIQUE_ID_description243 = internal constant [33 x i8] c"snd_dice.description=DICE driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [53 x i8] c"snd_dice.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [43 x i8] c"snd_dice.file=sound/firewire/dice/snd-dice\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"snd_dice.license=GPL v2\00", section ".modinfo", align 1
@dice_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dice_probe, ptr @dice_bus_reset, ptr @dice_remove, ptr @dice_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_dice__249_415_alsa_dice_init6 = internal global ptr @alsa_dice_init, section ".initcall6.init", align 4
@__exitcall_alsa_dice_exit = internal global ptr @alsa_dice_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_dice\00", [23 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@dice_id_table = internal constant { [18 x %struct.ieee1394_device_id], [112 x i8] } { [18 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 15, i32 41086, i32 4, i32 41086, i32 1, i32 ptrtoint (ptr @snd_dice_detect_extension_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 3436, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_extension_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 3436, i32 17, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_extension_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 32, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 33, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 34, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 35, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 36, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 39, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 358, i32 48, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 1429, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_alesis_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 1429, i32 2, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_alesis_mastercontrol_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 7912, i32 2, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_mytek_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 20674, i32 112, i32 0, i32 0, i32 0 }, %struct.ieee1394_device_id { i32 3, i32 2706, i32 8, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_presonus_formats to i32) }, %struct.ieee1394_device_id { i32 3, i32 4055, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @snd_dice_detect_harman_formats to i32) }, %struct.ieee1394_device_id { i32 8, i32 0, i32 0, i32 0, i32 1, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@dice_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dice->lock\00", [20 x i8] zeroinitializer }, align 32
@dice_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dice->mutex\00", [19 x i8] zeroinitializer }, align 32
@dice_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dice->hwdep_wait\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DICE\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s (serial %u) at %s, S%d\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 23]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 4055, i64 4082, i64 7274]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3436, i64 41086]
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"dice_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 393, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 396, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"dice_id_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 261, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 179, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 180, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 182, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 87, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 105, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [30 x i8] c"../sound/firewire/dice/dice.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 125, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_alsa_dice_exit, ptr @__initcall__kmod_snd_dice__249_415_alsa_dice_init6, ptr @alsa_dice_exit, ptr @dice_driver, ptr @.str, ptr @dice_id_table, ptr @dice_probe.__key, ptr @.str.1, ptr @dice_probe.__key.2, ptr @.str.3, ptr @dice_probe.__key.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_id_table to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dice_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_dice_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @dice_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_dice_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @dice_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dice_probe(ptr noundef %unit, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %vendor.i = alloca [32 x i8], align 2
  %model.i = alloca [32 x i8], align 2
  %value.i = alloca i32, align 4
  %it.i = alloca %struct.fw_csr_iterator, align 4
  %key.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !44
  %driver_data = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 5
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 1
  %3 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20674, i32 %4)
  %cmp.not = icmp eq i32 %4, 20674
  br i1 %cmp.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %parent.i.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it.i) #6
  %7 = ptrtoint ptr %it.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %it.i, align 4, !annotation !44
  %8 = getelementptr inbounds %struct.fw_csr_iterator, ptr %it.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #6
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %key.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !44
  %directory.i = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %12 = ptrtoint ptr %directory.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %directory.i, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %it.i, ptr noundef %13) #6
  %call128.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool.not29.i = icmp eq i32 %call128.i, 0
  br i1 %tobool.not29.i, label %if.then.if.else8.i_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.else8.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %model.031.i = phi i32 [ %model.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ -1, %if.then.while.body.i_crit_edge ]
  %vendor.030.i = phi i32 [ %vendor.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ -1, %if.then.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %while.body.i.sw.epilog.i_crit_edge [
    i32 18, label %sw.bb.i
    i32 23, label %sw.bb2.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %vendor.1.i = phi i32 [ %vendor.030.i, %while.body.i.sw.epilog.i_crit_edge ], [ %vendor.030.i, %sw.bb2.i ], [ %18, %sw.bb.i ]
  %model.1.i = phi i32 [ %model.031.i, %while.body.i.sw.epilog.i_crit_edge ], [ %20, %sw.bb2.i ], [ %model.031.i, %sw.bb.i ]
  %call1.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i
  %21 = zext i32 %vendor.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %vendor.1.i, label %while.end.i.if.else8.i_crit_edge [
    i32 7274, label %while.end.i.if.end10.i_crit_edge
    i32 4082, label %if.then4.i
    i32 4055, label %if.then7.i
  ]

while.end.i.if.end10.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

while.end.i.if.else8.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

if.then4.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.else8.i:                                       ; preds = %while.end.i.if.else8.i_crit_edge, %if.then.if.else8.i_crit_edge
  %model.0.lcssa38.i = phi i32 [ %model.1.i, %while.end.i.if.else8.i_crit_edge ], [ -1, %if.then.if.else8.i_crit_edge ]
  %vendor.0.lcssa36.i = phi i32 [ %vendor.1.i, %while.end.i.if.else8.i_crit_edge ], [ -1, %if.then.if.else8.i_crit_edge ]
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else8.i, %if.then7.i, %if.then4.i, %while.end.i.if.end10.i_crit_edge
  %model.0.lcssa37.i = phi i32 [ %model.1.i, %if.then4.i ], [ %model.1.i, %if.then7.i ], [ %model.0.lcssa38.i, %if.else8.i ], [ %model.1.i, %while.end.i.if.end10.i_crit_edge ]
  %vendor.0.lcssa35.i = phi i32 [ %vendor.1.i, %if.then4.i ], [ %vendor.1.i, %if.then7.i ], [ %vendor.0.lcssa36.i, %if.else8.i ], [ %vendor.1.i, %while.end.i.if.end10.i_crit_edge ]
  %category.0.i = phi i32 [ 16, %if.then4.i ], [ 32, %if.then7.i ], [ 4, %if.else8.i ], [ 0, %while.end.i.if.end10.i_crit_edge ]
  %config_rom.i = getelementptr i8, ptr %6, i32 1028
  %22 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %vendor.0.lcssa35.i, 8
  %or.i = or i32 %category.0.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %or.i)
  %cmp11.not.i = icmp eq i32 %25, %or.i
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %if.end10.i.check_dice_category.exit.thread_crit_edge

if.end10.i.check_dice_category.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_dice_category.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %arrayidx13.i = getelementptr i32, ptr %23, i32 4
  %26 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13.i, align 4
  %shr.i = lshr i32 %27, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %model.0.lcssa37.i)
  %cmp14.not.i = icmp eq i32 %shr.i, %model.0.lcssa37.i
  br i1 %cmp14.not.i, label %check_dice_category.exit, label %lor.lhs.false.i.check_dice_category.exit.thread_crit_edge

lor.lhs.false.i.check_dice_category.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_dice_category.exit.thread

check_dice_category.exit.thread:                  ; preds = %lor.lhs.false.i.check_dice_category.exit.thread_crit_edge, %if.end10.i.check_dice_category.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it.i) #6
  br label %cleanup

check_dice_category.exit:                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it.i) #6
  br label %if.end4

if.end4:                                          ; preds = %check_dice_category.exit, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = call i32 @snd_card_new(ptr noundef %unit, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 2232, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dice_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 9
  %31 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data, align 8
  %call.i = call ptr @get_device(ptr noundef %unit) #6
  %unit10 = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %unit10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %unit, ptr %unit10, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %driver_data.i, align 4
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %32, align 8
  %38 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14.not = icmp eq i32 %39, 0
  %40 = inttoptr i32 %39 to ptr
  %detect_formats.0 = select i1 %tobool14.not, ptr @snd_dice_stream_detect_current_formats, ptr %40
  %vendor_id18 = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 1
  %41 = ptrtoint ptr %vendor_id18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vendor_id18, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %42, label %if.end8.do.body_crit_edge [
    i32 3436, label %if.end8.if.then22_crit_edge
    i32 41086, label %if.end8.if.then22_crit_edge114
  ]

if.end8.if.then22_crit_edge114:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end8.if.then22_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22:                                        ; preds = %if.end8.if.then22_crit_edge, %if.end8.if.then22_crit_edge114
  %disable_double_pcm_frames = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 24
  %44 = ptrtoint ptr %disable_double_pcm_frames to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %disable_double_pcm_frames, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %disable_double_pcm_frames, align 8
  br label %do.body

do.body:                                          ; preds = %if.then22, %if.end8.do.body_crit_edge
  %lock = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dice_probe.__key, i16 noundef signext 3) #6
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @dice_probe.__key.2) #6
  %clock_accepted = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 25
  %45 = ptrtoint ptr %clock_accepted to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %clock_accepted, align 4
  %wait.i = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 25, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #6
  %hwdep_wait = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @dice_probe.__key.4) #6
  %call31 = call i32 @snd_dice_transaction_init(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body.error_crit_edge, label %if.end34

do.body.error_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end34:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %value.i, align 4, !annotation !44
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %32, i32 0, i32 9
  %47 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clock_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i, label %if.end34.if.end38_crit_edge, label %if.then.i

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then.i:                                        ; preds = %if.end34
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %32, i32 noundef 1, i32 noundef 100, ptr noundef nonnull %value.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %check_clock_caps.exit.thread, label %if.end.i

check_clock_caps.exit.thread:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %error

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end.i, %if.end34.if.end38_crit_edge
  %storemerge.i = phi i32 [ %50, %if.end.i ], [ 285212678, %if.end34.if.end38_crit_edge ]
  %51 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge.i, ptr %clock_caps.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %32, align 8
  %54 = ptrtoint ptr %unit10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %unit10, align 4
  %parent.i.i104 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %parent.i.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i.i104, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vendor.i) #6
  %58 = getelementptr inbounds i8, ptr %vendor.i, i32 2
  %59 = call ptr @memset(ptr %58, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %model.i) #6
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 2
  %60 = getelementptr inbounds i8, ptr %model.i, i32 2
  %61 = call ptr @memset(ptr %60, i32 255, i32 30)
  %62 = call ptr @memcpy(ptr %driver.i, ptr @.str.7, i32 5)
  %shortname.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3
  %63 = call ptr @memcpy(ptr %shortname.i, ptr @.str.7, i32 5)
  %call.i.i105 = call i32 @snd_dice_transaction_read(ptr noundef %32, i32 noundef 1, i32 noundef 12, ptr noundef %shortname.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i105)
  %cmp.i = icmp sgt i32 %call.i.i105, -1
  br i1 %cmp.i, label %for.body.preheader.i, label %if.end38.if.end.i108_crit_edge

if.end38.if.end.i108_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108

for.body.preheader.i:                             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %shortname.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %shortname.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #6
  %67 = ptrtoint ptr %shortname.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %shortname.i, align 4
  %arrayidx.1.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 4
  %68 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.1.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 8
  %72 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.2.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #6
  %75 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.3.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #6
  %79 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 16
  %80 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.4.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #6
  %83 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 20
  %84 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.5.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #6
  %87 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.6.i, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #6
  %91 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 28
  %92 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.7.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #6
  %95 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx.7.i, align 4
  %arrayidx14.i = getelementptr %struct.snd_card, ptr %53, i32 0, i32 3, i32 31
  %96 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx14.i, align 1
  br label %if.end.i108

if.end.i108:                                      ; preds = %for.body.preheader.i, %if.end38.if.end.i108_crit_edge
  %97 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 16128, ptr %vendor.i, align 2
  %config_rom.i106 = getelementptr i8, ptr %57, i32 1028
  %98 = ptrtoint ptr %config_rom.i106 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config_rom.i106, align 4
  %add.ptr.i = getelementptr i32, ptr %99, i32 5
  %call18.i = call i32 @fw_csr_string(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull %vendor.i, i32 noundef 32) #6
  %100 = ptrtoint ptr %model.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 16128, ptr %model.i, align 2
  %101 = ptrtoint ptr %unit10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %unit10, align 4
  %directory.i107 = getelementptr inbounds %struct.fw_unit, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %directory.i107 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %directory.i107, align 8
  %call23.i = call i32 @fw_csr_string(ptr noundef %104, i32 noundef 23, ptr noundef nonnull %model.i, i32 noundef 32) #6
  %105 = ptrtoint ptr %config_rom.i106 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config_rom.i106, align 4
  %arrayidx28.i = getelementptr i32, ptr %106, i32 4
  %107 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx28.i, align 4
  %109 = ptrtoint ptr %unit10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %unit10, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i108.dice_card_strings.exit_crit_edge

if.end.i108.dice_card_strings.exit_crit_edge:     ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %dice_card_strings.exit

if.end.i.i:                                       ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 4
  br label %dice_card_strings.exit

dice_card_strings.exit:                           ; preds = %if.end.i.i, %if.end.i108.dice_card_strings.exit_crit_edge
  %retval.0.i.i = phi ptr [ %114, %if.end.i.i ], [ %112, %if.end.i108.dice_card_strings.exit_crit_edge ]
  %and.i = and i32 %108, 4194303
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 4
  %max_speed.i = getelementptr i8, ptr %57, i32 -8
  %115 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_speed.i, align 8
  %shl.i109 = shl i32 100, %116
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.9, ptr noundef nonnull %vendor.i, ptr noundef nonnull %model.i, i32 noundef %and.i, ptr noundef %retval.0.i.i, i32 noundef %shl.i109) #6
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 6
  %117 = call ptr @memcpy(ptr %mixername.i, ptr @.str.7, i32 5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vendor.i) #6
  %call39 = call i32 %detect_formats.0(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %dice_card_strings.exit.error_crit_edge, label %if.end42

dice_card_strings.exit.error_crit_edge:           ; preds = %dice_card_strings.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end42:                                         ; preds = %dice_card_strings.exit
  %call43 = call i32 @snd_dice_stream_init_duplex(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.error_crit_edge, label %if.end46

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end46:                                         ; preds = %if.end42
  call void @snd_dice_create_proc(ptr noundef %32) #6
  %call47 = call i32 @snd_dice_create_pcm(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.error_crit_edge, label %if.end50

if.end46.error_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end50:                                         ; preds = %if.end46
  %call51 = call i32 @snd_dice_create_midi(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.error_crit_edge, label %if.end54

if.end50.error_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end54:                                         ; preds = %if.end50
  %call55 = call i32 @snd_dice_create_hwdep(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.error_crit_edge, label %if.end58

if.end54.error_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end58:                                         ; preds = %if.end54
  %118 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card, align 4
  %call59 = call i32 @snd_card_register(ptr noundef %119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.error_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58.error_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end58.error_crit_edge, %if.end54.error_crit_edge, %if.end50.error_crit_edge, %if.end46.error_crit_edge, %if.end42.error_crit_edge, %dice_card_strings.exit.error_crit_edge, %check_clock_caps.exit.thread, %do.body.error_crit_edge
  %err.0 = phi i32 [ %call31, %do.body.error_crit_edge ], [ %call39, %dice_card_strings.exit.error_crit_edge ], [ %call43, %if.end42.error_crit_edge ], [ %call47, %if.end46.error_crit_edge ], [ %call51, %if.end50.error_crit_edge ], [ %call55, %if.end54.error_crit_edge ], [ %call59, %if.end58.error_crit_edge ], [ %call.i.i, %check_clock_caps.exit.thread ]
  %120 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %card, align 4
  %call63 = call i32 @snd_card_free(ptr noundef %121) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end58.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %check_dice_category.exit.thread
  %retval.0 = phi i32 [ %err.0, %error ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ -19, %check_dice_category.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_bus_reset(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @snd_dice_transaction_reinit(ptr noundef %1) #6
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  tail call void @snd_dice_stream_update_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @snd_dice_stream_destroy_duplex(ptr noundef %1) #6
  tail call void @snd_dice_transaction_destroy(ptr noundef %1) #6
  %mutex = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  %unit = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_stream_detect_current_formats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_create_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_create_pcm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_create_midi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_create_hwdep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_transaction_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_stream_update_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_extension_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_tcelectronic_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_alesis_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_alesis_mastercontrol_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_mytek_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_presonus_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_harman_formats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_description243, !1, !"__UNIQUE_ID_description243", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_author244, !3, !"__UNIQUE_ID_author244", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice.c", i32 11, i32 1}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice.c", i32 12, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_snd_dice__249_415_alsa_dice_init6, !8, !"__initcall__kmod_snd_dice__249_415_alsa_dice_init6", i1 false, i1 false}
!8 = !{!"../sound/firewire/dice/dice.c", i32 415, i32 1}
!9 = !{ptr @__exitcall_alsa_dice_exit, !10, !"__exitcall_alsa_dice_exit", i1 false, i1 false}
!10 = !{!"../sound/firewire/dice/dice.c", i32 416, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/firewire/dice/dice.c", i32 396, i32 11}
!13 = !{ptr @dice_driver, !14, !"dice_driver", i1 false, i1 false}
!14 = !{!"../sound/firewire/dice/dice.c", i32 393, i32 25}
!15 = !{ptr @dice_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/firewire/dice/dice.c", i32 179, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dice_probe.__key.2, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/firewire/dice/dice.c", i32 180, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dice_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../sound/firewire/dice/dice.c", i32 182, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/firewire/dice/dice.c", i32 105, i32 23}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/firewire/dice/dice.c", i32 120, i32 17}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/firewire/dice/dice.c", i32 125, i32 4}
!33 = !{ptr @dice_id_table, !34, !"dice_id_table", i1 false, i1 false}
!34 = !{!"../sound/firewire/dice/dice.c", i32 261, i32 40}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
