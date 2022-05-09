; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_of.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DFP,EDID\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LCD,EDID\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EDID\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EDID1\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EDID,B\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EDID,A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@nvidia_probe_of_connector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017nvidiafb: Found OF EDID for head %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia_probe_of_connector\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/nvidia/nv_of.c\00", [61 x i8] zeroinitializer }, align 32
@nvidia_probe_of_connector._entry_ptr = internal global ptr @nvidia_probe_of_connector._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 34, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 34, i32 15 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 34, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 34, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 35, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 35, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 46, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [38 x i8] c"../drivers/video/fbdev/nvidia/nv_of.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 74, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nvidia_probe_of_connector._entry, ptr @nvidia_probe_of_connector._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_probe_of_connector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvidia_probe_of_connector(ptr nocapture noundef readonly %info, i32 noundef %conn, ptr nocapture noundef writeonly %out_edid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %pci_dev = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %pci_device_to_OF_node.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pci_device_to_OF_node.exit:                       ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %pci_device_to_OF_node.exit.cleanup_crit_edge, label %if.end

pci_device_to_OF_node.exit.cleanup_crit_edge:     ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %pci_device_to_OF_node.exit
  %twoHeads = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.for.body46.preheader_crit_edge, label %if.then2

if.end.for.body46.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46.preheader

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #4
  %cmp4.not105 = icmp eq ptr %call3, null
  br i1 %cmp4.not105, label %if.then2.for.body46.preheader_crit_edge, label %for.body.lr.ph

if.then2.for.body46.preheader_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46.preheader

for.body.lr.ph:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conn)
  %cmp12 = icmp eq i32 %conn, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conn)
  %cmp20 = icmp eq i32 %conn, 2
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %for.body.lr.ph
  %dp.0106 = phi ptr [ %call3, %for.body.lr.ph ], [ %call36, %for.inc35.for.body_crit_edge ]
  %call5 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.for.inc35_crit_edge, label %if.end8

for.body.for.inc35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

if.end8:                                          ; preds = %for.body
  %call9 = tail call i32 @strlen(ptr noundef nonnull %call5) #7
  %sub = add i32 %call9, -1
  %arrayidx = getelementptr i8, ptr %call5, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %9)
  %cmp10 = icmp eq i8 %9, 65
  %or.cond = and i1 %cmp12, %cmp10
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %9)
  %cmp17 = icmp eq i8 %9, 66
  %or.cond95 = and i1 %cmp20, %cmp17
  %or.cond110 = or i1 %or.cond, %or.cond95
  br i1 %or.cond110, label %for.body27.preheader, label %if.end8.for.inc35_crit_edge

if.end8.for.inc35_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

for.body27.preheader:                             ; preds = %if.end8
  %call29 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str, ptr noundef null) #4
  %cmp30.not = icmp eq ptr %call29, null
  br i1 %cmp30.not, label %for.cond23, label %for.body27.preheader.if.end38.thread116_crit_edge

for.body27.preheader.if.end38.thread116_crit_edge: ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.cond23:                                       ; preds = %for.body27.preheader
  %call29.1 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %cmp30.not.1 = icmp eq ptr %call29.1, null
  br i1 %cmp30.not.1, label %for.cond23.1, label %for.cond23.if.end38.thread116_crit_edge

for.cond23.if.end38.thread116_crit_edge:          ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.cond23.1:                                     ; preds = %for.cond23
  %call29.2 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %cmp30.not.2 = icmp eq ptr %call29.2, null
  br i1 %cmp30.not.2, label %for.cond23.2, label %for.cond23.1.if.end38.thread116_crit_edge

for.cond23.1.if.end38.thread116_crit_edge:        ; preds = %for.cond23.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.cond23.2:                                     ; preds = %for.cond23.1
  %call29.3 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.3, ptr noundef null) #4
  %cmp30.not.3 = icmp eq ptr %call29.3, null
  br i1 %cmp30.not.3, label %for.cond23.3, label %for.cond23.2.if.end38.thread116_crit_edge

for.cond23.2.if.end38.thread116_crit_edge:        ; preds = %for.cond23.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.cond23.3:                                     ; preds = %for.cond23.2
  %call29.4 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.4, ptr noundef null) #4
  %cmp30.not.4 = icmp eq ptr %call29.4, null
  br i1 %cmp30.not.4, label %for.cond23.4, label %for.cond23.3.if.end38.thread116_crit_edge

for.cond23.3.if.end38.thread116_crit_edge:        ; preds = %for.cond23.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.cond23.4:                                     ; preds = %for.cond23.3
  %call29.5 = tail call ptr @of_get_property(ptr noundef nonnull %dp.0106, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %cmp30.not.5 = icmp eq ptr %call29.5, null
  br i1 %cmp30.not.5, label %if.end38, label %for.cond23.4.if.end38.thread116_crit_edge

for.cond23.4.if.end38.thread116_crit_edge:        ; preds = %for.cond23.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread116

for.inc35:                                        ; preds = %if.end8.for.inc35_crit_edge, %for.body.for.inc35_crit_edge
  %call36 = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef nonnull %dp.0106) #4
  %cmp4.not = icmp eq ptr %call36, null
  br i1 %cmp4.not, label %for.inc35.for.body46.preheader_crit_edge, label %for.inc35.for.body_crit_edge

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc35.for.body46.preheader_crit_edge:         ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46.preheader

if.end38.thread116:                               ; preds = %for.cond23.4.if.end38.thread116_crit_edge, %for.cond23.3.if.end38.thread116_crit_edge, %for.cond23.2.if.end38.thread116_crit_edge, %for.cond23.1.if.end38.thread116_crit_edge, %for.cond23.if.end38.thread116_crit_edge, %for.body27.preheader.if.end38.thread116_crit_edge
  %pedid.1.ph = phi ptr [ %call29.5, %for.cond23.4.if.end38.thread116_crit_edge ], [ %call29.4, %for.cond23.3.if.end38.thread116_crit_edge ], [ %call29.3, %for.cond23.2.if.end38.thread116_crit_edge ], [ %call29.2, %for.cond23.1.if.end38.thread116_crit_edge ], [ %call29.1, %for.cond23.if.end38.thread116_crit_edge ], [ %call29, %for.body27.preheader.if.end38.thread116_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %dp.0106) #4
  br label %if.then58

if.end38:                                         ; preds = %for.cond23.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %dp.0106) #4
  br label %for.body46.preheader

for.body46.preheader:                             ; preds = %if.end38, %for.inc35.for.body46.preheader_crit_edge, %if.then2.for.body46.preheader_crit_edge, %if.end.for.body46.preheader_crit_edge
  %call48 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef null) #4
  %cmp49.not = icmp eq ptr %call48, null
  br i1 %cmp49.not, label %for.cond42, label %for.body46.preheader.if.then58_crit_edge

for.body46.preheader.if.then58_crit_edge:         ; preds = %for.body46.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42:                                       ; preds = %for.body46.preheader
  %call48.1 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %cmp49.not.1 = icmp eq ptr %call48.1, null
  br i1 %cmp49.not.1, label %for.cond42.1, label %for.cond42.if.then58_crit_edge

for.cond42.if.then58_crit_edge:                   ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42.1:                                     ; preds = %for.cond42
  %call48.2 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %cmp49.not.2 = icmp eq ptr %call48.2, null
  br i1 %cmp49.not.2, label %for.cond42.2, label %for.cond42.1.if.then58_crit_edge

for.cond42.1.if.then58_crit_edge:                 ; preds = %for.cond42.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42.2:                                     ; preds = %for.cond42.1
  %call48.3 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef null) #4
  %cmp49.not.3 = icmp eq ptr %call48.3, null
  br i1 %cmp49.not.3, label %for.cond42.3, label %for.cond42.2.if.then58_crit_edge

for.cond42.2.if.then58_crit_edge:                 ; preds = %for.cond42.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42.3:                                     ; preds = %for.cond42.2
  %call48.4 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef null) #4
  %cmp49.not.4 = icmp eq ptr %call48.4, null
  br i1 %cmp49.not.4, label %for.cond42.4, label %for.cond42.3.if.then58_crit_edge

for.cond42.3.if.then58_crit_edge:                 ; preds = %for.cond42.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42.4:                                     ; preds = %for.cond42.3
  %call48.5 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %cmp49.not.5 = icmp eq ptr %call48.5, null
  br i1 %cmp49.not.5, label %for.cond42.4.cleanup_crit_edge, label %for.cond42.4.if.then58_crit_edge

for.cond42.4.if.then58_crit_edge:                 ; preds = %for.cond42.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

for.cond42.4.cleanup_crit_edge:                   ; preds = %for.cond42.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then58:                                        ; preds = %for.cond42.4.if.then58_crit_edge, %for.cond42.3.if.then58_crit_edge, %for.cond42.2.if.then58_crit_edge, %for.cond42.1.if.then58_crit_edge, %for.cond42.if.then58_crit_edge, %for.body46.preheader.if.then58_crit_edge, %if.end38.thread116
  %pedid.5.ph = phi ptr [ %pedid.1.ph, %if.end38.thread116 ], [ %call48, %for.body46.preheader.if.then58_crit_edge ], [ %call48.1, %for.cond42.if.then58_crit_edge ], [ %call48.2, %for.cond42.1.if.then58_crit_edge ], [ %call48.3, %for.cond42.2.if.then58_crit_edge ], [ %call48.4, %for.cond42.3.if.then58_crit_edge ], [ %call48.5, %for.cond42.4.if.then58_crit_edge ]
  %call59 = tail call ptr @kmemdup(ptr noundef nonnull %pedid.5.ph, i32 noundef 128, i32 noundef 3264) #4
  %10 = ptrtoint ptr %out_edid to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call59, ptr %out_edid, align 4
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %if.then58.cleanup_crit_edge, label %do.end

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conn) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then58.cleanup_crit_edge, %for.cond42.4.cleanup_crit_edge, %pci_device_to_OF_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %pci_device_to_OF_node.exit.cleanup_crit_edge ], [ -1, %if.then58.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.cond42.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 34, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 34, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 34, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 34, i32 35}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 35, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 35, i32 13}
!12 = distinct !{null, !13, !"propnames", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 33, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 46, i32 32}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/nvidia/nv_of.c", i32 74, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nvidia_probe_of_connector._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvidia_probe_of_connector._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
