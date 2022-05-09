; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-flash.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-flash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.107 }
%union.anon.107 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.112 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.112 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%union.map_word = type { [8 x i32] }

@cobalt_flash_map = internal global { %struct.map_info, [52 x i8] } { %struct.map_info { ptr @.str.4, i32 67108864, i32 0, ptr null, ptr null, i32 0, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@cobalt_flash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Probe CFI flash failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cobalt_flash_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cobalt/cobalt-flash.c\00", [56 x i8] zeroinitializer }, align 32
@cobalt_flash_probe._entry_ptr = internal global ptr @cobalt_flash_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cobalt-flash\00", [19 x i8] zeroinitializer }, align 32
@flash_copy_to._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: offset 0x%x: length %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flash_copy_to\00", [18 x i8] zeroinitializer }, align 32
@flash_copy_to._entry_ptr = internal global ptr @flash_copy_to._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"cobalt_flash_map\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 18, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 97, i32 21 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 100, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 19, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [43 x i8] c"../drivers/media/pci/cobalt/cobalt-flash.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 70, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @cobalt_flash_probe._entry, ptr @cobalt_flash_probe._entry_ptr, ptr @flash_copy_to._entry, ptr @flash_copy_to._entry_ptr, ptr @cobalt_flash_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_flash_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_flash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_copy_to._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cobalt_flash_probe(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 6), align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.body4 [
    i32 1, label %entry.do.end9_crit_edge
    i32 2, label %entry.do.end9_crit_edge37
    i32 4, label %entry.do.end9_crit_edge38
    i32 8, label %entry.do.end9_crit_edge39
    i32 16, label %entry.do.end9_crit_edge40
    i32 32, label %entry.do.end9_crit_edge41
  ]

entry.do.end9_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

entry.do.end9_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

entry.do.end9_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

entry.do.end9_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

entry.do.end9_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cobalt/cobalt-flash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end9:                                          ; preds = %entry.do.end9_crit_edge, %entry.do.end9_crit_edge37, %entry.do.end9_crit_edge38, %entry.do.end9_crit_edge39, %entry.do.end9_crit_edge40, %entry.do.end9_crit_edge41
  %bar1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %2 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1, align 8
  store ptr %3, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 3), align 4
  store ptr @flash_read16, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 7), align 4
  store ptr @flash_write16, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 9), align 4
  store ptr @flash_copy_from, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 8), align 4
  store ptr @flash_copy_to, ptr getelementptr inbounds (%struct.map_info, ptr @cobalt_flash_map, i32 0, i32 10), align 4
  %call10 = tail call ptr @do_map_probe(ptr noundef nonnull @.str, ptr noundef nonnull @cobalt_flash_map) #4
  %mtd11 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 26
  %4 = ptrtoint ptr %mtd11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %mtd11, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #7
  br label %cleanup

if.end18:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call10, i32 0, i32 55
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %pci_dev = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call10, i32 0, i32 56, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %call20 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call10, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end16
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -1, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_read16(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %add = add i32 %offset, 134217728
  %add.ptr.i = getelementptr i8, ptr %3, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #4, !srcloc !28
  %add.ptr3.i = getelementptr i8, ptr %3, i32 1540
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #4, !srcloc !29
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %and = and i32 %offset, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %6, 65535
  %shr = lshr i32 %6, 16
  %storemerge = select i1 %tobool.not, i32 %and3, i32 %shr
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_write16(ptr nocapture noundef readonly %map, [8 x i32] %datum.coerce, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %datum.coerce.fca.0.extract = extractvalue [8 x i32] %datum.coerce, 0
  %conv = trunc i32 %datum.coerce.fca.0.extract to i16
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add = add i32 %offset, 134217728
  %add.ptr.i = getelementptr i8, ptr %1, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %add) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !28
  %and.i = and i32 %offset, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr3.i = getelementptr i8, ptr %1, i32 1542
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %3) #4, !srcloc !32
  br label %cobalt_bus_write16.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i = getelementptr i8, ptr %1, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %4) #4, !srcloc !32
  br label %cobalt_bus_write16.exit

cobalt_bus_write16.exit:                          ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_copy_from(ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %to, i32 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not9 = icmp eq i32 %len, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %do.body.3, %do.body.2.while.cond.loopexit_crit_edge, %do.body.1.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %inc.lcssa = phi i32 [ %inc, %while.body.while.cond.loopexit_crit_edge ], [ %inc.1, %do.body.1.while.cond.loopexit_crit_edge ], [ %inc.2, %do.body.2.while.cond.loopexit_crit_edge ], [ %inc.3, %do.body.3 ]
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %while.body.while.cond.loopexit_crit_edge ], [ %incdec.ptr.1, %do.body.1.while.cond.loopexit_crit_edge ], [ %incdec.ptr.2, %do.body.2.while.cond.loopexit_crit_edge ], [ %incdec.ptr.3, %do.body.3 ]
  %dec.lcssa = phi i32 [ %dec, %while.body.while.cond.loopexit_crit_edge ], [ %dec.1, %do.body.1.while.cond.loopexit_crit_edge ], [ %dec.2, %do.body.2.while.cond.loopexit_crit_edge ], [ %dec.3, %do.body.3 ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not, %while.body.while.cond.loopexit_crit_edge ], [ %tobool1.not.1, %do.body.1.while.cond.loopexit_crit_edge ], [ %tobool1.not.2, %do.body.2.while.cond.loopexit_crit_edge ], [ %tobool1.not.3, %do.body.3 ]
  br i1 %tobool1.not.lcssa, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %dest.012 = phi ptr [ %to, %while.body.lr.ph ], [ %incdec.ptr.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %src.011 = phi i32 [ %from, %while.body.lr.ph ], [ %inc.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %len.addr.010 = phi i32 [ %len, %while.body.lr.ph ], [ %dec.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add = add i32 %src.011, 134217728
  %add.ptr.i = getelementptr i8, ptr %1, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %add) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !28
  %add.ptr3.i = getelementptr i8, ptr %1, i32 1540
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #4, !srcloc !29
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %and = shl i32 %src.011, 3
  %mul = and i32 %and, 24
  %shr = lshr i32 %4, %mul
  %conv = trunc i32 %shr to i8
  %5 = ptrtoint ptr %dest.012 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %dest.012, align 1
  %inc = add i32 %src.011, 1
  %incdec.ptr = getelementptr i8, ptr %dest.012, i32 1
  %dec = add i32 %len.addr.010, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %rem = and i32 %inc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %while.body.while.cond.loopexit_crit_edge, label %do.body.1

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

do.body.1:                                        ; preds = %while.body
  %and.1 = shl i32 %inc, 3
  %mul.1 = and i32 %and.1, 24
  %shr.1 = lshr i32 %4, %mul.1
  %conv.1 = trunc i32 %shr.1 to i8
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.1, ptr %incdec.ptr, align 1
  %inc.1 = add i32 %src.011, 2
  %incdec.ptr.1 = getelementptr i8, ptr %dest.012, i32 2
  %dec.1 = add i32 %len.addr.010, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool1.not.1 = icmp eq i32 %dec.1, 0
  %rem.1 = and i32 %inc.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1)
  %tobool2.not.1 = icmp eq i32 %rem.1, 0
  %or.cond.1 = select i1 %tobool1.not.1, i1 true, i1 %tobool2.not.1
  br i1 %or.cond.1, label %do.body.1.while.cond.loopexit_crit_edge, label %do.body.2

do.body.1.while.cond.loopexit_crit_edge:          ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

do.body.2:                                        ; preds = %do.body.1
  %and.2 = shl i32 %inc.1, 3
  %mul.2 = and i32 %and.2, 24
  %shr.2 = lshr i32 %4, %mul.2
  %conv.2 = trunc i32 %shr.2 to i8
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.2, ptr %incdec.ptr.1, align 1
  %inc.2 = add i32 %src.011, 3
  %incdec.ptr.2 = getelementptr i8, ptr %dest.012, i32 3
  %dec.2 = add i32 %len.addr.010, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool1.not.2 = icmp eq i32 %dec.2, 0
  %rem.2 = and i32 %inc.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2)
  %tobool2.not.2 = icmp eq i32 %rem.2, 0
  %or.cond.2 = select i1 %tobool1.not.2, i1 true, i1 %tobool2.not.2
  br i1 %or.cond.2, label %do.body.2.while.cond.loopexit_crit_edge, label %do.body.3

do.body.2.while.cond.loopexit_crit_edge:          ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.loopexit

do.body.3:                                        ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %and.3 = shl i32 %inc.2, 3
  %mul.3 = and i32 %and.3, 24
  %shr.3 = lshr i32 %4, %mul.3
  %conv.3 = trunc i32 %shr.3 to i8
  %8 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.3, ptr %incdec.ptr.2, align 1
  %inc.3 = add i32 %src.011, 4
  %incdec.ptr.3 = getelementptr i8, ptr %dest.012, i32 4
  %dec.3 = add i32 %len.addr.010, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool1.not.3 = icmp eq i32 %dec.3, 0
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flash_copy_to(ptr nocapture noundef readonly %map, i32 noundef %to, ptr nocapture noundef readonly %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %to, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not16 = icmp eq i32 %len, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %do.body1.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body1.preheader.lr.ph:                         ; preds = %entry
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  br label %do.body1.preheader

do.body1.preheader:                               ; preds = %cobalt_bus_write16.exit.do.body1.preheader_crit_edge, %do.body1.preheader.lr.ph
  %len.addr.019 = phi i32 [ %len, %do.body1.preheader.lr.ph ], [ %8, %cobalt_bus_write16.exit.do.body1.preheader_crit_edge ]
  %dest.018 = phi i32 [ %to, %do.body1.preheader.lr.ph ], [ %7, %cobalt_bus_write16.exit.do.body1.preheader_crit_edge ]
  %src.017 = phi ptr [ %from, %do.body1.preheader.lr.ph ], [ %uglygep21, %cobalt_bus_write16.exit.do.body1.preheader_crit_edge ]
  %0 = add i32 %len.addr.019, -1
  %1 = and i32 %dest.018, 1
  %2 = xor i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %3 = icmp eq i32 %0, 0
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %0)
  %4 = select i1 %3, i32 0, i32 %umin
  %uglygep = getelementptr i8, ptr %src.017, i32 %4
  %uglygep20 = getelementptr i8, ptr %src.017, i32 1
  %5 = add i32 %dest.018, 1
  %6 = add i32 %dest.018, %4
  %uglygep21 = getelementptr i8, ptr %uglygep20, i32 %4
  %7 = add i32 %5, %4
  %8 = sub i32 %0, %4
  %9 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %uglygep, align 1
  %conv.le = zext i8 %10 to i32
  %and.le = shl i32 %6, 3
  %mul.le = and i32 %and.le, 8
  %shl.le = shl nuw nsw i32 %conv.le, %mul.le
  %conv2.le = trunc i32 %shl.le to i16
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  %sub = add i32 %6, 134217727
  %add.ptr.i = getelementptr i8, ptr %12, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %sub) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #4, !srcloc !28
  %and.i = and i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body1.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr3.i = getelementptr i8, ptr %12, i32 1542
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv2.le) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %14) #4, !srcloc !32
  br label %cobalt_bus_write16.exit

if.else.i:                                        ; preds = %do.body1.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5.i = getelementptr i8, ptr %12, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv2.le) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %15) #4, !srcloc !32
  br label %cobalt_bus_write16.exit

cobalt_bus_write16.exit:                          ; preds = %if.else.i, %if.then.i
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cobalt_bus_write16.exit.while.end_crit_edge, label %cobalt_bus_write16.exit.do.body1.preheader_crit_edge

cobalt_bus_write16.exit.do.body1.preheader_crit_edge: ; preds = %cobalt_bus_write16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1.preheader

cobalt_bus_write16.exit.while.end_crit_edge:      ; preds = %cobalt_bus_write16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %cobalt_bus_write16.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_flash_remove(ptr nocapture noundef readonly %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 26
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd, align 8
  tail call void @map_destroy(ptr noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-flash.c", i32 97, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cobalt/cobalt-flash.c", i32 100, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cobalt_flash_probe._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cobalt_flash_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cobalt/cobalt-flash.c", i32 19, i32 11}
!10 = !{ptr @cobalt_flash_map, !11, !"cobalt_flash_map", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cobalt/cobalt-flash.c", i32 18, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cobalt/cobalt-flash.c", i32 70, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @flash_copy_to._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @flash_copy_to._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2156769902, i64 2156770405, i64 2156769939, i64 2156769995, i64 2156770029, i64 2156770053, i64 2156770094, i64 2156770115, i64 2156770143, i64 2156770177}
!27 = !{i64 2152539042}
!28 = !{i64 5004410}
!29 = !{i64 5004828}
!30 = !{i64 2152537687}
!31 = !{i64 2152538492}
!32 = !{i64 5003790}
