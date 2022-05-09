; ModuleID = '/llk/IR_all_yes/sound/usb/implicit.c_pt.bc'
source_filename = "../sound/usb/implicit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.snd_usb_implicit_fb_match = type { i32, i32, i32, i32, i32 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.72, i8, i8, ptr }
%struct.anon.72 = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"add_implicit_fb_sync_ep\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/usb/implicit.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%d:%d: added %s implicit_fb sync_ep %x, iface %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@playback_implicit_fb_quirks = internal constant { [17 x %struct.snd_usb_implicit_fb_match], [76 x i8] } { [17 x %struct.snd_usb_implicit_fb_match] [%struct.snd_usb_implicit_fb_match { i32 77141257, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936816, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936817, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936896, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 123936897, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 610697232, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 837353473, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 837353474, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 77141807, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 228196575, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 586153990, i32 0, i32 129, i32 3, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 377942057, i32 0, i32 130, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 610697219, i32 0, i32 134, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 77141802, i32 0, i32 134, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 134021124, i32 1, i32 0, i32 0, i32 0 }, %struct.snd_usb_implicit_fb_match { i32 134021124, i32 255, i32 132, i32 0, i32 2 }, %struct.snd_usb_implicit_fb_match zeroinitializer], [76 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2276, i64 11123]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2276, i64 11123]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 103, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"playback_implicit_fb_quirks\00", align 1
@___asan_gen_.28 = private constant [24 x i8] c"../sound/usb/implicit.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 47, i32 47 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @playback_implicit_fb_quirks], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_implicit_fb_quirks to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef %chip, ptr noundef %fmt, ptr noundef %alts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 11
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %endpoint, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_id.i, align 4
  %shr.mask.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 92405760, i32 %shr.mask.i)
  %cmp4.i = icmp eq i32 %shr.mask.i, 92405760
  br i1 %cmp4.i, label %if.then5.i, label %if.then.if.end10.i_crit_edge

if.then.if.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.then
  %call6.i = tail call fastcc i32 @add_roland_capture_quirk(ptr noundef %chip, ptr noundef %fmt, ptr noundef %alts) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then5.i.return_crit_edge, label %if.then5.i.if.end10.i_crit_edge

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then5.i.return_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end10.i:                                       ; preds = %if.then5.i.if.end10.i_crit_edge, %if.then.if.end10.i_crit_edge
  %4 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_id.i, align 4
  %shr.i.i = lshr i32 %5, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %6 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i.i, label %if.end10.i.return_crit_edge [
    i16 11123, label %if.end10.i.if.end.i26.i_crit_edge
    i16 2276, label %if.end10.i.if.end.i26.i_crit_edge6
  ]

if.end10.i.if.end.i26.i_crit_edge6:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i26.i

if.end10.i.if.end.i26.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i26.i

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i26.i:                                     ; preds = %if.end10.i.if.end.i26.i_crit_edge, %if.end10.i.if.end.i26.i_crit_edge6
  %bInterfaceClass.i25.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 5
  %7 = ptrtoint ptr %bInterfaceClass.i25.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceClass.i25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp4.not.i.i = icmp eq i8 %8, -1
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %if.end.i26.i.return_crit_edge

if.end.i26.i.return_crit_edge:                    ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end7.i.i:                                      ; preds = %if.end.i26.i
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp10.not.i.i = icmp eq i8 %10, 2
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %if.end7.i.i.return_crit_edge

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end13.i.i:                                     ; preds = %if.end7.i.i
  %endpoint.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %11 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endpoint.i.i, align 4
  %bmAttributes.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i.i.i, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i.not.i.i.i = icmp eq i8 %15, 1
  br i1 %cmp.i.not.i.i.i, label %usb_endpoint_is_isoc_out.exit.i.i, label %if.end13.i.i.return_crit_edge

if.end13.i.i.return_crit_edge:                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

usb_endpoint_is_isoc_out.exit.i.i:                ; preds = %if.end13.i.i
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool.not.i.i = icmp sgt i8 %17, -1
  %18 = and i8 %14, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp16.not.i.i = icmp eq i8 %18, 4
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp16.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end19.i.i, label %usb_endpoint_is_isoc_out.exit.i.i.return_crit_edge

usb_endpoint_is_isoc_out.exit.i.i.return_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end19.i.i:                                     ; preds = %usb_endpoint_is_isoc_out.exit.i.i
  %bmAttributes.i.i54.i.i = getelementptr %struct.usb_host_endpoint, ptr %12, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i.i54.i.i, align 1
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.i.not.i55.i.i = icmp eq i8 %21, 1
  br i1 %cmp.i.not.i55.i.i, label %usb_endpoint_is_isoc_in.exit.i.i, label %if.end19.i.i.return_crit_edge

if.end19.i.i.return_crit_edge:                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

usb_endpoint_is_isoc_in.exit.i.i:                 ; preds = %if.end19.i.i
  %bEndpointAddress.i.i56.i.i = getelementptr %struct.usb_host_endpoint, ptr %12, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %bEndpointAddress.i.i56.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress.i.i56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool24.not.i.i = icmp sgt i8 %23, -1
  br i1 %tobool24.not.i.i, label %usb_endpoint_is_isoc_in.exit.i.i.return_crit_edge, label %lor.lhs.false25.i.i

usb_endpoint_is_isoc_in.exit.i.i.return_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false25.i.i:                              ; preds = %usb_endpoint_is_isoc_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = and i8 %20, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %25 = icmp eq i8 %24, 4
  %spec.select.i = zext i1 %25 to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call fastcc i32 @audioformat_implicit_fb_quirk(ptr noundef %chip, ptr noundef %fmt, ptr noundef %alts)
  br label %return

return:                                           ; preds = %if.else, %lor.lhs.false25.i.i, %usb_endpoint_is_isoc_in.exit.i.i.return_crit_edge, %if.end19.i.i.return_crit_edge, %usb_endpoint_is_isoc_out.exit.i.i.return_crit_edge, %if.end13.i.i.return_crit_edge, %if.end7.i.i.return_crit_edge, %if.end.i26.i.return_crit_edge, %if.end10.i.return_crit_edge, %if.then5.i.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ 1, %if.then5.i.return_crit_edge ], [ 0, %if.end10.i.return_crit_edge ], [ 0, %if.end.i26.i.return_crit_edge ], [ 0, %if.end7.i.i.return_crit_edge ], [ 0, %usb_endpoint_is_isoc_out.exit.i.i.return_crit_edge ], [ 0, %usb_endpoint_is_isoc_in.exit.i.i.return_crit_edge ], [ 0, %if.end13.i.i.return_crit_edge ], [ 0, %if.end19.i.i.return_crit_edge ], [ %spec.select.i, %lor.lhs.false25.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audioformat_implicit_fb_quirk(ptr noundef %chip, ptr noundef %fmt, ptr noundef readonly %alts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_attr = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 12
  %0 = ptrtoint ptr %ep_attr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ep_attr, align 2
  %2 = and i8 %1, 12
  %bInterfaceClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 5
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_id.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %5 = phi i32 [ 77141257, %entry ], [ %11, %for.inc.i.for.body.i_crit_edge ]
  %match.addr.013.i = phi ptr [ @playback_implicit_fb_quirks, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp.i = icmp eq i32 %5, %4
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %iface_class.i = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %match.addr.013.i, i32 0, i32 1
  %6 = ptrtoint ptr %iface_class.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iface_class.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.find_implicit_fb_entry.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.find_implicit_fb_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_implicit_fb_entry.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceClass.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp4.i = icmp eq i32 %7, %conv.i
  br i1 %cmp4.i, label %lor.lhs.false.i.find_implicit_fb_entry.exit_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

lor.lhs.false.i.find_implicit_fb_entry.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %find_implicit_fb_entry.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.snd_usb_implicit_fb_match, ptr %match.addr.013.i, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

find_implicit_fb_entry.exit:                      ; preds = %lor.lhs.false.i.find_implicit_fb_entry.exit_crit_edge, %land.lhs.true.i.find_implicit_fb_entry.exit_crit_edge
  %tobool.not = icmp eq ptr %match.addr.013.i, null
  br i1 %tobool.not, label %find_implicit_fb_entry.exit.if.end13_crit_edge, label %if.then

find_implicit_fb_entry.exit.if.end13_crit_edge:   ; preds = %find_implicit_fb_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %find_implicit_fb_entry.exit
  %type = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %match.addr.013.i, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %13, label %if.then.if.end13_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.then.cleanup_crit_edge
    i32 2, label %sw.bb3
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 4
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %15 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv2.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv2.i, 1
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %17 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bAlternateSetting.i, align 1
  %conv4.i = zext i8 %18 to i32
  %call.i = tail call fastcc i32 @__add_generic_implicit_fb(ptr noundef %chip, ptr noundef %fmt, i32 noundef %add.i, i32 noundef %conv4.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i102 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i102, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv9.i = zext i8 %20 to i32
  %sub.i = add nsw i32 %conv9.i, -1
  %21 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bAlternateSetting.i, align 1
  %conv12.i = zext i8 %22 to i32
  %call13.i = tail call fastcc i32 @__add_generic_implicit_fb(ptr noundef %chip, ptr noundef %fmt, i32 noundef %sub.i, i32 noundef %conv12.i) #4
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  %ep_num = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %match.addr.013.i, i32 0, i32 2
  %23 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ep_num, align 4
  %iface = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %match.addr.013.i, i32 0, i32 3
  %25 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iface, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %call.i104 = tail call ptr @usb_ifnum_to_if(ptr noundef %28, i32 noundef %26) #4
  %tobool1.not.i = icmp eq ptr %call.i104, null
  br i1 %tobool1.not.i, label %sw.bb3.cleanup_crit_edge, label %lor.lhs.false.i106

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i106:                               ; preds = %sw.bb3
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call.i104, i32 0, i32 2
  %29 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i105 = icmp ult i32 %30, 2
  br i1 %cmp.i105, label %lor.lhs.false.i106.cleanup_crit_edge, label %if.end.i107

lor.lhs.false.i106.cleanup_crit_edge:             ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i107:                                      ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %call.i104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i104, align 8
  %conv.i108 = trunc i32 %24 to i8
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %33 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i108, ptr %sync_ep.i, align 8
  %conv4.i109 = trunc i32 %26 to i8
  %sync_iface.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %34 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i109, ptr %sync_iface.i, align 1
  %bAlternateSetting.i110 = getelementptr %struct.usb_host_interface, ptr %32, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %bAlternateSetting.i110 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bAlternateSetting.i110, align 1
  %sync_altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %37 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %sync_altsetting.i, align 2
  %sync_ep_idx.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %38 = ptrtoint ptr %sync_ep_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %sync_ep_idx.i, align 1
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %39 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %implicit_fb.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@audioformat_implicit_fb_quirk, %if.then10.i)) #4
          to label %cleanup [label %if.then10.i], !srcloc !21

if.then10.i:                                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  %iface13.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %42 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iface13.i, align 8
  %conv14.i = zext i8 %43 to i32
  %altsetting15.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %44 = ptrtoint ptr %altsetting15.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %altsetting15.i, align 1
  %conv16.i = zext i8 %45 to i32
  %and.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool17.not.i, ptr @.str.5, ptr @.str.4
  %46 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sync_ep.i, align 8
  %conv19.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sync_iface.i, align 1
  %conv21.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sync_altsetting.i, align 2
  %conv23.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, ptr noundef %dev12.i, ptr noundef nonnull @.str.3, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef nonnull %cond.i, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv23.i) #4
  br label %cleanup

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %find_implicit_fb_entry.exit.if.end13_crit_edge, %for.inc.i.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp = icmp eq i8 %2, 4
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end37_crit_edge

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end13
  %52 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp16 = icmp eq i8 %53, 1
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true18:                                  ; preds = %land.lhs.true
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 7
  %54 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp21 = icmp eq i8 %55, 32
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true18.if.end37_crit_edge

land.lhs.true18.if.end37_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %56 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp26 = icmp eq i8 %57, 1
  br i1 %cmp26, label %if.then28, label %land.lhs.true23.if.end37_crit_edge

land.lhs.true23.if.end37_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then28:                                        ; preds = %land.lhs.true23
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %58 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterfaceNumber, align 2
  %conv30 = zext i8 %59 to i32
  %add = add nuw nsw i32 %conv30, 1
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %60 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bAlternateSetting, align 1
  %conv32 = zext i8 %61 to i32
  %call.i131 = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %add, i32 noundef %conv32) #4
  %tobool.not.i132 = icmp eq ptr %call.i131, null
  br i1 %tobool.not.i132, label %if.then28.if.end37_crit_edge, label %if.end.i135

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end.i135:                                      ; preds = %if.then28
  %bInterfaceClass.i133 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i131, i32 0, i32 5
  %62 = ptrtoint ptr %bInterfaceClass.i133 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bInterfaceClass.i133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp.not.i134 = icmp eq i8 %63, 1
  br i1 %cmp.not.i134, label %lor.lhs.false.i136, label %if.end.i135.if.end37_crit_edge

if.end.i135.if.end37_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

lor.lhs.false.i136:                               ; preds = %if.end.i135
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i131, i32 0, i32 6
  %64 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bInterfaceSubClass.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp4.not.i = icmp eq i8 %65, 2
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i136.if.end37_crit_edge

lor.lhs.false.i136.if.end37_crit_edge:            ; preds = %lor.lhs.false.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i136
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i131, i32 0, i32 7
  %66 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %67)
  %cmp9.not.i = icmp eq i8 %67, 32
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false6.i.if.end37_crit_edge

lor.lhs.false6.i.if.end37_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

lor.lhs.false11.i:                                ; preds = %lor.lhs.false6.i
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i131, i32 0, i32 4
  %68 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp14.i = icmp eq i8 %69, 0
  br i1 %cmp14.i, label %lor.lhs.false11.i.if.end37_crit_edge, label %if.end17.i

lor.lhs.false11.i.if.end37_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end17.i:                                       ; preds = %lor.lhs.false11.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %call.i131, i32 0, i32 3
  %70 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %endpoint.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bmAttributes.i.i.i, align 1
  %74 = and i8 %73, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp.i.not.i.i = icmp eq i8 %74, 1
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_isoc_in.exit.i, label %if.end17.i.if.end37_crit_edge

if.end17.i.if.end37_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

usb_endpoint_is_isoc_in.exit.i:                   ; preds = %if.end17.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %71, i32 0, i32 2
  %75 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool20.not.i = icmp slt i8 %76, 0
  %77 = and i8 %73, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %77)
  %cmp23.not.i = icmp eq i8 %77, 32
  %or.cond.i = select i1 %tobool20.not.i, i1 %cmp23.not.i, i1 false
  br i1 %or.cond.i, label %add_generic_uac2_implicit_fb.exit, label %usb_endpoint_is_isoc_in.exit.i.if.end37_crit_edge

usb_endpoint_is_isoc_in.exit.i.if.end37_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

add_generic_uac2_implicit_fb.exit:                ; preds = %usb_endpoint_is_isoc_in.exit.i
  %conv27.i = zext i8 %76 to i32
  %call28.i = tail call fastcc i32 @add_implicit_fb_sync_ep(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv27.i, i32 noundef 0, i32 noundef %add, ptr noundef nonnull %call.i131) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool34.not = icmp eq i32 %call28.i, 0
  br i1 %tobool34.not, label %add_generic_uac2_implicit_fb.exit.if.end37_crit_edge, label %add_generic_uac2_implicit_fb.exit.cleanup_crit_edge

add_generic_uac2_implicit_fb.exit.cleanup_crit_edge: ; preds = %add_generic_uac2_implicit_fb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

add_generic_uac2_implicit_fb.exit.if.end37_crit_edge: ; preds = %add_generic_uac2_implicit_fb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end37:                                         ; preds = %add_generic_uac2_implicit_fb.exit.if.end37_crit_edge, %usb_endpoint_is_isoc_in.exit.i.if.end37_crit_edge, %if.end17.i.if.end37_crit_edge, %lor.lhs.false11.i.if.end37_crit_edge, %lor.lhs.false6.i.if.end37_crit_edge, %lor.lhs.false.i136.if.end37_crit_edge, %if.end.i135.if.end37_crit_edge, %if.then28.if.end37_crit_edge, %land.lhs.true23.if.end37_crit_edge, %land.lhs.true18.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end13.if.end37_crit_edge
  %78 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %usb_id.i, align 4
  %shr.mask = and i32 %79, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 92405760, i32 %shr.mask)
  %cmp38 = icmp eq i32 %shr.mask, 92405760
  br i1 %cmp38, label %if.then40, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then40:                                        ; preds = %if.end37
  %80 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %81)
  %cmp.not.i.i = icmp eq i8 %81, -1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then40.if.end46_crit_edge

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

lor.lhs.false.i.i:                                ; preds = %if.then40
  %bInterfaceSubClass.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 6
  %82 = ptrtoint ptr %bInterfaceSubClass.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bInterfaceSubClass.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp4.not.i.i = icmp eq i8 %83, 2
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i.roland_sanity_check_iface.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.roland_sanity_check_iface.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %bInterfaceProtocol.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 7
  %84 = ptrtoint ptr %bInterfaceProtocol.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bInterfaceProtocol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp8.not.i.i = icmp eq i8 %85, 2
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.roland_sanity_check_iface.exit.i_crit_edge, label %land.lhs.true.i.i.if.end46_crit_edge

land.lhs.true.i.i.if.end46_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

land.lhs.true.i.i.roland_sanity_check_iface.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit.i

roland_sanity_check_iface.exit.i:                 ; preds = %land.lhs.true.i.i.roland_sanity_check_iface.exit.i_crit_edge, %lor.lhs.false.i.i.roland_sanity_check_iface.exit.i_crit_edge
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %86 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bNumEndpoints.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp13.i.not.i = icmp eq i8 %87, 0
  br i1 %cmp13.i.not.i, label %roland_sanity_check_iface.exit.i.if.end46_crit_edge, label %if.end.i141

roland_sanity_check_iface.exit.i.if.end46_crit_edge: ; preds = %roland_sanity_check_iface.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end.i141:                                      ; preds = %roland_sanity_check_iface.exit.i
  %endpoint.i138 = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %88 = ptrtoint ptr %endpoint.i138 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %endpoint.i138, align 4
  %bmAttributes.i.i.i139 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %bmAttributes.i.i.i139 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bmAttributes.i.i.i139, align 1
  %92 = and i8 %91, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp.i.not.i.i140 = icmp eq i8 %92, 1
  br i1 %cmp.i.not.i.i140, label %usb_endpoint_is_isoc_out.exit.i, label %if.end.i141.if.end46_crit_edge

if.end.i141.if.end46_crit_edge:                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

usb_endpoint_is_isoc_out.exit.i:                  ; preds = %if.end.i141
  %bEndpointAddress.i.i.i142 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 2
  %93 = ptrtoint ptr %bEndpointAddress.i.i.i142 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bEndpointAddress.i.i.i142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %tobool.not.i143 = icmp sgt i8 %94, -1
  %95 = and i8 %91, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %95)
  %cmp.not.i144 = icmp eq i8 %95, 4
  %or.cond.i145 = select i1 %tobool.not.i143, i1 %cmp.not.i144, i1 false
  br i1 %or.cond.i145, label %if.end4.i, label %usb_endpoint_is_isoc_out.exit.i.if.end46_crit_edge

usb_endpoint_is_isoc_out.exit.i.if.end46_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end4.i:                                        ; preds = %usb_endpoint_is_isoc_out.exit.i
  %bInterfaceNumber.i146 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %96 = ptrtoint ptr %bInterfaceNumber.i146 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bInterfaceNumber.i146, align 2
  %conv6.i = zext i8 %97 to i32
  %add.i147 = add nuw nsw i32 %conv6.i, 1
  %bAlternateSetting.i148 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %98 = ptrtoint ptr %bAlternateSetting.i148 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bAlternateSetting.i148, align 1
  %conv8.i = zext i8 %99 to i32
  %call9.i = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %add.i147, i32 noundef %conv8.i) #4
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end4.i.if.end46_crit_edge, label %lor.lhs.false11.i149

if.end4.i.if.end46_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

lor.lhs.false11.i149:                             ; preds = %if.end4.i
  %bInterfaceClass.i47.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9.i, i32 0, i32 5
  %100 = ptrtoint ptr %bInterfaceClass.i47.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bInterfaceClass.i47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp.not.i48.i = icmp eq i8 %101, -1
  br i1 %cmp.not.i48.i, label %lor.lhs.false.i51.i, label %lor.lhs.false11.i149.if.end46_crit_edge

lor.lhs.false11.i149.if.end46_crit_edge:          ; preds = %lor.lhs.false11.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

lor.lhs.false.i51.i:                              ; preds = %lor.lhs.false11.i149
  %bInterfaceSubClass.i49.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9.i, i32 0, i32 6
  %102 = ptrtoint ptr %bInterfaceSubClass.i49.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bInterfaceSubClass.i49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp4.not.i50.i = icmp eq i8 %103, 2
  br i1 %cmp4.not.i50.i, label %lor.lhs.false.i51.i.roland_sanity_check_iface.exit59.i_crit_edge, label %land.lhs.true.i54.i

lor.lhs.false.i51.i.roland_sanity_check_iface.exit59.i_crit_edge: ; preds = %lor.lhs.false.i51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit59.i

land.lhs.true.i54.i:                              ; preds = %lor.lhs.false.i51.i
  %bInterfaceProtocol.i52.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9.i, i32 0, i32 7
  %104 = ptrtoint ptr %bInterfaceProtocol.i52.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bInterfaceProtocol.i52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %cmp8.not.i53.i = icmp eq i8 %105, 2
  br i1 %cmp8.not.i53.i, label %land.lhs.true.i54.i.roland_sanity_check_iface.exit59.i_crit_edge, label %land.lhs.true.i54.i.if.end46_crit_edge

land.lhs.true.i54.i.if.end46_crit_edge:           ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

land.lhs.true.i54.i.roland_sanity_check_iface.exit59.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit59.i

roland_sanity_check_iface.exit59.i:               ; preds = %land.lhs.true.i54.i.roland_sanity_check_iface.exit59.i_crit_edge, %lor.lhs.false.i51.i.roland_sanity_check_iface.exit59.i_crit_edge
  %bNumEndpoints.i55.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9.i, i32 0, i32 4
  %106 = ptrtoint ptr %bNumEndpoints.i55.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bNumEndpoints.i55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp13.i56.not.i = icmp eq i8 %107, 0
  br i1 %cmp13.i56.not.i, label %roland_sanity_check_iface.exit59.i.if.end46_crit_edge, label %if.end14.i

roland_sanity_check_iface.exit59.i.if.end46_crit_edge: ; preds = %roland_sanity_check_iface.exit59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end14.i:                                       ; preds = %roland_sanity_check_iface.exit59.i
  %endpoint15.i = getelementptr inbounds %struct.usb_host_interface, ptr %call9.i, i32 0, i32 3
  %108 = ptrtoint ptr %endpoint15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %endpoint15.i, align 4
  %bmAttributes.i.i60.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %bmAttributes.i.i60.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bmAttributes.i.i60.i, align 1
  %112 = and i8 %111, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp.i.not.i61.i = icmp eq i8 %112, 1
  br i1 %cmp.i.not.i61.i, label %usb_endpoint_is_isoc_in.exit.i150, label %if.end14.i.if.end46_crit_edge

if.end14.i.if.end46_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

usb_endpoint_is_isoc_in.exit.i150:                ; preds = %if.end14.i
  %bEndpointAddress.i.i62.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %109, i32 0, i32 2
  %113 = ptrtoint ptr %bEndpointAddress.i.i62.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bEndpointAddress.i.i62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool19.not.i = icmp slt i8 %114, 0
  %115 = and i8 %111, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %115)
  %cmp24.not.i = icmp eq i8 %115, 4
  %or.cond68.i = select i1 %tobool19.not.i, i1 %cmp24.not.i, i1 false
  br i1 %or.cond68.i, label %add_roland_implicit_fb.exit, label %usb_endpoint_is_isoc_in.exit.i150.if.end46_crit_edge

usb_endpoint_is_isoc_in.exit.i150.if.end46_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

add_roland_implicit_fb.exit:                      ; preds = %usb_endpoint_is_isoc_in.exit.i150
  %quirk_flags.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %116 = ptrtoint ptr %quirk_flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %quirk_flags.i, align 4
  %or.i = or i32 %117, 16
  store i32 %or.i, ptr %quirk_flags.i, align 4
  %118 = ptrtoint ptr %bEndpointAddress.i.i62.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bEndpointAddress.i.i62.i, align 1
  %conv28.i = zext i8 %119 to i32
  %bInterfaceNumber30.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9.i, i32 0, i32 2
  %120 = ptrtoint ptr %bInterfaceNumber30.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bInterfaceNumber30.i, align 2
  %conv31.i = zext i8 %121 to i32
  %call32.i = tail call fastcc i32 @add_implicit_fb_sync_ep(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv28.i, i32 noundef 0, i32 noundef %conv31.i, ptr noundef nonnull %call9.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp42 = icmp sgt i32 %call32.i, 0
  br i1 %cmp42, label %add_roland_implicit_fb.exit.cleanup_crit_edge, label %add_roland_implicit_fb.exit.if.end46_crit_edge

add_roland_implicit_fb.exit.if.end46_crit_edge:   ; preds = %add_roland_implicit_fb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

add_roland_implicit_fb.exit.cleanup_crit_edge:    ; preds = %add_roland_implicit_fb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %add_roland_implicit_fb.exit.if.end46_crit_edge, %usb_endpoint_is_isoc_in.exit.i150.if.end46_crit_edge, %if.end14.i.if.end46_crit_edge, %roland_sanity_check_iface.exit59.i.if.end46_crit_edge, %land.lhs.true.i54.i.if.end46_crit_edge, %lor.lhs.false11.i149.if.end46_crit_edge, %if.end4.i.if.end46_crit_edge, %usb_endpoint_is_isoc_out.exit.i.if.end46_crit_edge, %if.end.i141.if.end46_crit_edge, %roland_sanity_check_iface.exit.i.if.end46_crit_edge, %land.lhs.true.i.i.if.end46_crit_edge, %if.then40.if.end46_crit_edge, %if.end37.if.end46_crit_edge
  %122 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %usb_id.i, align 4
  %shr.i = lshr i32 %123, 16
  %trunc.i = trunc i32 %shr.i to i16
  %124 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %trunc.i, label %if.end46.if.end57_crit_edge [
    i16 11123, label %if.end46.if.end.i155_crit_edge
    i16 2276, label %if.end46.if.end.i155_crit_edge228
  ]

if.end46.if.end.i155_crit_edge228:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i155

if.end46.if.end.i155_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i155

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end.i155:                                      ; preds = %if.end46.if.end.i155_crit_edge, %if.end46.if.end.i155_crit_edge228
  %125 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp4.not.i154 = icmp eq i8 %126, -1
  br i1 %cmp4.not.i154, label %if.end7.i, label %if.end.i155.if.end57_crit_edge

if.end.i155.if.end57_crit_edge:                   ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end7.i:                                        ; preds = %if.end.i155
  %bNumEndpoints.i156 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %127 = ptrtoint ptr %bNumEndpoints.i156 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bNumEndpoints.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %128)
  %cmp10.not.i = icmp eq i8 %128, 2
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end7.i.if.end57_crit_edge

if.end7.i.if.end57_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end13.i:                                       ; preds = %if.end7.i
  %endpoint.i157 = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %129 = ptrtoint ptr %endpoint.i157 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %endpoint.i157, align 4
  %bmAttributes.i.i.i158 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %bmAttributes.i.i.i158 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bmAttributes.i.i.i158, align 1
  %133 = and i8 %132, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp.i.not.i.i159 = icmp eq i8 %133, 1
  br i1 %cmp.i.not.i.i159, label %usb_endpoint_is_isoc_out.exit.i163, label %if.end13.i.if.end57_crit_edge

if.end13.i.if.end57_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

usb_endpoint_is_isoc_out.exit.i163:               ; preds = %if.end13.i
  %bEndpointAddress.i.i.i160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %130, i32 0, i32 2
  %134 = ptrtoint ptr %bEndpointAddress.i.i.i160 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bEndpointAddress.i.i.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %tobool.not.i161 = icmp sgt i8 %135, -1
  %136 = and i8 %132, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %136)
  %cmp16.not.i = icmp eq i8 %136, 4
  %or.cond.i162 = select i1 %tobool.not.i161, i1 %cmp16.not.i, i1 false
  br i1 %or.cond.i162, label %if.end19.i, label %usb_endpoint_is_isoc_out.exit.i163.if.end57_crit_edge

usb_endpoint_is_isoc_out.exit.i163.if.end57_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit.i163
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end19.i:                                       ; preds = %usb_endpoint_is_isoc_out.exit.i163
  %bmAttributes.i.i54.i = getelementptr %struct.usb_host_endpoint, ptr %130, i32 1, i32 0, i32 3
  %137 = ptrtoint ptr %bmAttributes.i.i54.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bmAttributes.i.i54.i, align 1
  %139 = and i8 %138, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %139)
  %cmp.i.not.i55.i = icmp eq i8 %139, 1
  br i1 %cmp.i.not.i55.i, label %usb_endpoint_is_isoc_in.exit.i164, label %if.end19.i.if.end57_crit_edge

if.end19.i.if.end57_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

usb_endpoint_is_isoc_in.exit.i164:                ; preds = %if.end19.i
  %bEndpointAddress.i.i56.i = getelementptr %struct.usb_host_endpoint, ptr %130, i32 1, i32 0, i32 2
  %140 = ptrtoint ptr %bEndpointAddress.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bEndpointAddress.i.i56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool24.not.i = icmp slt i8 %141, 0
  %142 = and i8 %138, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %142)
  %143 = icmp eq i8 %142, 4
  %or.cond = select i1 %tobool24.not.i, i1 %143, i1 false
  br i1 %or.cond, label %if.then48, label %usb_endpoint_is_isoc_in.exit.i164.if.end57_crit_edge

usb_endpoint_is_isoc_in.exit.i164.if.end57_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i164
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then48:                                        ; preds = %usb_endpoint_is_isoc_in.exit.i164
  %quirk_flags49 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %144 = ptrtoint ptr %quirk_flags49 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %quirk_flags49, align 4
  %or50 = or i32 %145, 16
  store i32 %or50, ptr %quirk_flags49, align 4
  %146 = ptrtoint ptr %endpoint.i157 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %endpoint.i157, align 4
  %bEndpointAddress = getelementptr %struct.usb_host_endpoint, ptr %147, i32 1, i32 0, i32 2
  %148 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bEndpointAddress, align 2
  %bInterfaceNumber54 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %150 = ptrtoint ptr %bInterfaceNumber54 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bInterfaceNumber54, align 2
  %tobool.not.i167 = icmp eq ptr %alts, null
  br i1 %tobool.not.i167, label %if.then.i, label %if.then48.if.end3.i_crit_edge

if.then48.if.end3.i_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then48
  %conv55 = zext i8 %151 to i32
  %dev.i168 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %152 = ptrtoint ptr %dev.i168 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i168, align 4
  %call.i169 = tail call ptr @usb_ifnum_to_if(ptr noundef %153, i32 noundef %conv55) #4
  %tobool1.not.i170 = icmp eq ptr %call.i169, null
  br i1 %tobool1.not.i170, label %if.then.i.cleanup_crit_edge, label %lor.lhs.false.i173

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i173:                               ; preds = %if.then.i
  %num_altsetting.i171 = getelementptr inbounds %struct.usb_interface, ptr %call.i169, i32 0, i32 2
  %154 = ptrtoint ptr %num_altsetting.i171 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_altsetting.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp.i172 = icmp ult i32 %155, 2
  br i1 %cmp.i172, label %lor.lhs.false.i173.cleanup_crit_edge, label %if.end.i175

lor.lhs.false.i173.cleanup_crit_edge:             ; preds = %lor.lhs.false.i173
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i175:                                      ; preds = %lor.lhs.false.i173
  call void @__sanitizer_cov_trace_pc() #6
  %156 = ptrtoint ptr %call.i169 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i169, align 8
  %arrayidx.i174 = getelementptr %struct.usb_host_interface, ptr %157, i32 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i175, %if.then48.if.end3.i_crit_edge
  %alts.addr.0.i = phi ptr [ %alts, %if.then48.if.end3.i_crit_edge ], [ %arrayidx.i174, %if.end.i175 ]
  %sync_ep.i176 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %158 = ptrtoint ptr %sync_ep.i176 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %149, ptr %sync_ep.i176, align 8
  %sync_iface.i177 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %159 = ptrtoint ptr %sync_iface.i177 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %151, ptr %sync_iface.i177, align 1
  %bAlternateSetting.i178 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts.addr.0.i, i32 0, i32 3
  %160 = ptrtoint ptr %bAlternateSetting.i178 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bAlternateSetting.i178, align 1
  %sync_altsetting.i179 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %162 = ptrtoint ptr %sync_altsetting.i179 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %sync_altsetting.i179, align 2
  %sync_ep_idx.i180 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %163 = ptrtoint ptr %sync_ep_idx.i180 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %sync_ep_idx.i180, align 1
  %implicit_fb.i181 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %164 = ptrtoint ptr %implicit_fb.i181 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %implicit_fb.i181, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@audioformat_implicit_fb_quirk, %if.then10.i194)) #4
          to label %cleanup [label %if.then10.i194], !srcloc !21

if.then10.i194:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev11.i182 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %165 = ptrtoint ptr %dev11.i182 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev11.i182, align 4
  %dev12.i183 = getelementptr inbounds %struct.usb_device, ptr %166, i32 0, i32 15
  %iface13.i184 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %167 = ptrtoint ptr %iface13.i184 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %iface13.i184, align 8
  %conv14.i185 = zext i8 %168 to i32
  %altsetting15.i186 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %169 = ptrtoint ptr %altsetting15.i186 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %altsetting15.i186, align 1
  %conv16.i187 = zext i8 %170 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %149)
  %tobool17.not.i189 = icmp sgt i8 %149, -1
  %cond.i190 = select i1 %tobool17.not.i189, ptr @.str.5, ptr @.str.4
  %171 = ptrtoint ptr %sync_ep.i176 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %sync_ep.i176, align 8
  %conv19.i191 = zext i8 %172 to i32
  %173 = ptrtoint ptr %sync_iface.i177 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %sync_iface.i177, align 1
  %conv21.i192 = zext i8 %174 to i32
  %175 = ptrtoint ptr %sync_altsetting.i179 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %sync_altsetting.i179, align 2
  %conv23.i193 = zext i8 %176 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, ptr noundef %dev12.i183, ptr noundef nonnull @.str.3, i32 noundef %conv14.i185, i32 noundef %conv16.i187, ptr noundef nonnull %cond.i190, i32 noundef %conv19.i191, i32 noundef %conv21.i192, i32 noundef %conv23.i193) #4
  br label %cleanup

if.end57:                                         ; preds = %usb_endpoint_is_isoc_in.exit.i164.if.end57_crit_edge, %if.end19.i.if.end57_crit_edge, %usb_endpoint_is_isoc_out.exit.i163.if.end57_crit_edge, %if.end13.i.if.end57_crit_edge, %if.end7.i.if.end57_crit_edge, %if.end.i155.if.end57_crit_edge, %if.end46.if.end57_crit_edge
  %generic_implicit_fb = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 25
  %177 = ptrtoint ptr %generic_implicit_fb to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %generic_implicit_fb, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool58.not = icmp eq i8 %178, 0
  br i1 %tobool58.not, label %if.end57.cleanup_crit_edge, label %if.then59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then59:                                        ; preds = %if.end57
  %179 = ptrtoint ptr %ep_attr to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ep_attr, align 2
  %181 = and i8 %180, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %181)
  %cmp.not.i198 = icmp eq i8 %181, 4
  br i1 %cmp.not.i198, label %if.end.i206, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i206:                                      ; preds = %if.then59
  %bInterfaceNumber.i199 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %182 = ptrtoint ptr %bInterfaceNumber.i199 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %bInterfaceNumber.i199, align 2
  %conv2.i200 = zext i8 %183 to i32
  %add.i201 = add nuw nsw i32 %conv2.i200, 1
  %bAlternateSetting.i202 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %184 = ptrtoint ptr %bAlternateSetting.i202 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %bAlternateSetting.i202, align 1
  %conv4.i203 = zext i8 %185 to i32
  %call.i204 = tail call fastcc i32 @__add_generic_implicit_fb(ptr noundef %chip, ptr noundef %fmt, i32 noundef %add.i201, i32 noundef %conv4.i203) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool.not.i205 = icmp eq i32 %call.i204, 0
  br i1 %tobool.not.i205, label %if.end6.i211, label %if.end.i206.cleanup_crit_edge

if.end.i206.cleanup_crit_edge:                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i211:                                     ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %bInterfaceNumber.i199 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %bInterfaceNumber.i199, align 2
  %conv9.i207 = zext i8 %187 to i32
  %sub.i208 = add nsw i32 %conv9.i207, -1
  %188 = ptrtoint ptr %bAlternateSetting.i202 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %bAlternateSetting.i202, align 1
  %conv12.i209 = zext i8 %189 to i32
  %call13.i210 = tail call fastcc i32 @__add_generic_implicit_fb(ptr noundef %chip, ptr noundef %fmt, i32 noundef %sub.i208, i32 noundef %conv12.i209) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i211, %if.end.i206.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then10.i194, %if.end3.i, %lor.lhs.false.i173.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %add_roland_implicit_fb.exit.cleanup_crit_edge, %add_generic_uac2_implicit_fb.exit.cleanup_crit_edge, %if.then10.i, %if.end.i107, %lor.lhs.false.i106.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end6.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then.cleanup_crit_edge ], [ 1, %add_generic_uac2_implicit_fb.exit.cleanup_crit_edge ], [ 1, %add_roland_implicit_fb.exit.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ %call13.i, %if.end6.i ], [ 0, %sw.bb.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i106.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 1, %if.then10.i ], [ 1, %if.end.i107 ], [ 0, %lor.lhs.false.i173.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 1, %if.then10.i194 ], [ 1, %if.end3.i ], [ %call13.i210, %if.end6.i211 ], [ 0, %if.then59.cleanup_crit_edge ], [ 1, %if.end.i206.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef readonly %chip, ptr noundef readonly %target, ptr nocapture noundef readonly %params, i32 noundef %stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 6
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iface, align 8
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 15
  %2 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sync_iface, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 7
  %4 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %altsetting, align 1
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 16
  %6 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sync_altsetting, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5 = icmp eq i8 %5, %7
  %spec.select = select i1 %cmp5, ptr %target, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %sync_fmt.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 14
  %8 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sync_ep, align 8
  %conv7 = zext i8 %9 to i32
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %target, i32 0, i32 3
  %10 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt_type, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 18
  %12 = ptrtoint ptr %pcm_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn17.i = load ptr, ptr %pcm_list.i, align 4
  %cmp.not18.i = icmp eq ptr %.pn17.i, %pcm_list.i
  br i1 %cmp.not18.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn17.i, %if.end.for.body.i_crit_edge ]
  %fmt_type2.i = getelementptr i8, ptr %.pn19.i, i32 -372
  %13 = ptrtoint ptr %fmt_type2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt_type2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp3.i = icmp eq i32 %14, %11
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %substream.i = getelementptr i8, ptr %.pn19.i, i32 -368
  %arrayidx.i = getelementptr [2 x %struct.snd_usb_substream], ptr %substream.i, i32 0, i32 %stream
  %ep_num4.i = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx.i, i32 0, i32 19
  %15 = ptrtoint ptr %ep_num4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep_num4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv7)
  %cmp5.i = icmp eq i32 %16, %conv7
  br i1 %cmp5.i, label %find_matching_substream.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

find_matching_substream.exit:                     ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_matching_substream.exit.cleanup_crit_edge, label %if.end9

find_matching_substream.exit.cleanup_crit_edge:   ; preds = %find_matching_substream.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %find_matching_substream.exit
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %arrayidx.i, i32 0, i32 26
  %18 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %fp.056 = load ptr, ptr %fmt_list, align 4
  %cmp11.not57 = icmp eq ptr %fp.056, %fmt_list
  br i1 %cmp11.not57, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i48 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i48, align 4
  %arrayidx.i.i49 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %match_endpoint_audioformats.exit.for.body_crit_edge, %for.body.lr.ph
  %fp.060 = phi ptr [ %fp.056, %for.body.lr.ph ], [ %fp.0, %match_endpoint_audioformats.exit.for.body_crit_edge ]
  %sync_fmt.159 = phi ptr [ %sync_fmt.0, %for.body.lr.ph ], [ %spec.select47, %match_endpoint_audioformats.exit.for.body_crit_edge ]
  %high_score.058 = phi i32 [ 0, %for.body.lr.ph ], [ %44, %match_endpoint_audioformats.exit.for.body_crit_edge ]
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.if.then.i.i_crit_edge

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %for.body.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %for.body.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %24, %for.body.if.then.i.i_crit_edge ], [ %27, %for.inc.i.i.if.then.i.i_crit_edge ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #4, !range !23
  %add.i.i = or i32 %25, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %for.body
  %26 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.1.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %channels1.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 2
  %28 = ptrtoint ptr %channels1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %params_format.exit.match_endpoint_audioformats.exit_crit_edge, label %if.end.i

params_format.exit.match_endpoint_audioformats.exit_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

if.end.i:                                         ; preds = %params_format.exit
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 1
  %30 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %formats.i, align 8
  %sh_prom.i.i = zext i32 %retval.0.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and.i = and i64 %31, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.match_endpoint_audioformats.exit_crit_edge, label %if.end3.i

if.end.i.match_endpoint_audioformats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

if.end3.i:                                        ; preds = %if.end.i
  %rates.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 21
  %32 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rates.i, align 4
  %and4.i = and i32 %33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %for.cond.preheader.i, label %if.then6.i

for.cond.preheader.i:                             ; preds = %if.end3.i
  %nr_rates.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 24
  %34 = ptrtoint ptr %nr_rates.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_rates.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp111.not.i = icmp eq i32 %35, 0
  br i1 %cmp111.not.i, label %for.cond.preheader.i.match_endpoint_audioformats.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.match_endpoint_audioformats.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rate_table.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 25
  %36 = ptrtoint ptr %rate_table.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rate_table.i, align 4
  br label %for.body.i51

if.then6.i:                                       ; preds = %if.end3.i
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 22
  %38 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %20)
  %cmp7.i = icmp ugt i32 %39, %20
  br i1 %cmp7.i, label %if.then6.i.match_endpoint_audioformats.exit_crit_edge, label %lor.lhs.false.i

if.then6.i.match_endpoint_audioformats.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

lor.lhs.false.i:                                  ; preds = %if.then6.i
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp.060, i32 0, i32 23
  %40 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %20)
  %cmp8.i = icmp ult i32 %41, %20
  br i1 %cmp8.i, label %lor.lhs.false.i.match_endpoint_audioformats.exit_crit_edge, label %lor.lhs.false.i.if.end19.i_crit_edge

lor.lhs.false.i.if.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

lor.lhs.false.i.match_endpoint_audioformats.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

for.cond.i:                                       ; preds = %for.body.i51
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %for.cond.i.match_endpoint_audioformats.exit_crit_edge, label %for.cond.i.for.body.i51_crit_edge

for.cond.i.for.body.i51_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i51

for.cond.i.match_endpoint_audioformats.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %match_endpoint_audioformats.exit

for.body.i51:                                     ; preds = %for.cond.i.for.body.i51_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i51_crit_edge ]
  %arrayidx.i50 = getelementptr i32, ptr %37, i32 %i.02.i
  %42 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %20)
  %cmp12.i = icmp eq i32 %43, %20
  br i1 %cmp12.i, label %for.body.i51.if.end19.i_crit_edge, label %for.cond.i

for.body.i51.if.end19.i_crit_edge:                ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.body.i51.if.end19.i_crit_edge, %lor.lhs.false.i.if.end19.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %22)
  %cmp21.i = icmp eq i32 %29, %22
  %spec.select.i = select i1 %cmp21.i, i32 2, i32 1
  br label %match_endpoint_audioformats.exit

match_endpoint_audioformats.exit:                 ; preds = %if.end19.i, %for.cond.i.match_endpoint_audioformats.exit_crit_edge, %lor.lhs.false.i.match_endpoint_audioformats.exit_crit_edge, %if.then6.i.match_endpoint_audioformats.exit_crit_edge, %for.cond.preheader.i.match_endpoint_audioformats.exit_crit_edge, %if.end.i.match_endpoint_audioformats.exit_crit_edge, %params_format.exit.match_endpoint_audioformats.exit_crit_edge
  %retval.0.i52 = phi i32 [ %spec.select.i, %if.end19.i ], [ 0, %params_format.exit.match_endpoint_audioformats.exit_crit_edge ], [ 0, %if.end.i.match_endpoint_audioformats.exit_crit_edge ], [ 0, %lor.lhs.false.i.match_endpoint_audioformats.exit_crit_edge ], [ 0, %if.then6.i.match_endpoint_audioformats.exit_crit_edge ], [ 0, %for.cond.preheader.i.match_endpoint_audioformats.exit_crit_edge ], [ 0, %for.cond.i.match_endpoint_audioformats.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i52, i32 %high_score.058)
  %cmp17 = icmp ugt i32 %retval.0.i52, %high_score.058
  %44 = tail call i32 @llvm.smax.i32(i32 %retval.0.i52, i32 %high_score.058)
  %spec.select47 = select i1 %cmp17, ptr %fp.060, ptr %sync_fmt.159
  %45 = ptrtoint ptr %fp.060 to i32
  call void @__asan_load4_noabort(i32 %45)
  %fp.0 = load ptr, ptr %fp.060, align 4
  %cmp11.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp11.not, label %match_endpoint_audioformats.exit.cleanup_crit_edge, label %match_endpoint_audioformats.exit.for.body_crit_edge

match_endpoint_audioformats.exit.for.body_crit_edge: ; preds = %match_endpoint_audioformats.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

match_endpoint_audioformats.exit.cleanup_crit_edge: ; preds = %match_endpoint_audioformats.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %match_endpoint_audioformats.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %find_matching_substream.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %sync_fmt.0, %find_matching_substream.exit.cleanup_crit_edge ], [ %sync_fmt.0, %if.end.cleanup_crit_edge ], [ %sync_fmt.0, %if.end9.cleanup_crit_edge ], [ %spec.select47, %match_endpoint_audioformats.exit.cleanup_crit_edge ], [ %sync_fmt.0, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_implicit_fb_sync_ep(ptr nocapture noundef readonly %chip, ptr nocapture noundef %fmt, i32 noundef %ep, i32 noundef %ep_idx, i32 noundef %ifnum, ptr noundef readonly %alts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %alts, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %ifnum) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %arrayidx = getelementptr %struct.usb_host_interface, ptr %5, i32 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %alts.addr.0 = phi ptr [ %alts, %entry.if.end3_crit_edge ], [ %arrayidx, %if.end ]
  %conv = trunc i32 %ep to i8
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %6 = ptrtoint ptr %sync_ep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %sync_ep, align 8
  %conv4 = trunc i32 %ifnum to i8
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %7 = ptrtoint ptr %sync_iface to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %sync_iface, align 1
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts.addr.0, i32 0, i32 3
  %8 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAlternateSetting, align 1
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %10 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %sync_altsetting, align 2
  %conv5 = trunc i32 %ep_idx to i8
  %sync_ep_idx = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %11 = ptrtoint ptr %sync_ep_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %sync_ep_idx, align 1
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %12 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %implicit_fb, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_implicit_fb_sync_ep, %if.then10)) #4
          to label %cleanup [label %if.then10], !srcloc !21

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %dev11 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %13 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev11, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %iface13 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %15 = ptrtoint ptr %iface13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iface13, align 8
  %conv14 = zext i8 %16 to i32
  %altsetting15 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %17 = ptrtoint ptr %altsetting15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %altsetting15, align 1
  %conv16 = zext i8 %18 to i32
  %and = and i32 %ep, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool17.not, ptr @.str.5, ptr @.str.4
  %19 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sync_ep, align 8
  %conv19 = zext i8 %20 to i32
  %21 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sync_iface, align 1
  %conv21 = zext i8 %22 to i32
  %23 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sync_altsetting, align 2
  %conv23 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, ptr noundef %dev12, ptr noundef nonnull @.str.3, i32 noundef %conv14, i32 noundef %conv16, ptr noundef nonnull %cond, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end3, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_roland_capture_quirk(ptr noundef %chip, ptr nocapture noundef %fmt, ptr nocapture noundef readonly %alts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bInterfaceClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 5
  %0 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not.i = icmp eq i8 %1, -1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 6
  %2 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceSubClass.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp4.not.i = icmp eq i8 %3, 2
  br i1 %cmp4.not.i, label %lor.lhs.false.i.roland_sanity_check_iface.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.roland_sanity_check_iface.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 7
  %4 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp8.not.i = icmp eq i8 %5, 2
  br i1 %cmp8.not.i, label %land.lhs.true.i.roland_sanity_check_iface.exit_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i.roland_sanity_check_iface.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit

roland_sanity_check_iface.exit:                   ; preds = %land.lhs.true.i.roland_sanity_check_iface.exit_crit_edge, %lor.lhs.false.i.roland_sanity_check_iface.exit_crit_edge
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13.i.not = icmp eq i8 %7, 0
  br i1 %cmp13.i.not, label %roland_sanity_check_iface.exit.cleanup_crit_edge, label %if.end

roland_sanity_check_iface.exit.cleanup_crit_edge: ; preds = %roland_sanity_check_iface.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %roland_sanity_check_iface.exit
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %alts, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.not.i = icmp eq i8 %12, 1
  br i1 %cmp.i.not.i, label %usb_endpoint_is_isoc_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_endpoint_is_isoc_in.exit:                     ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp slt i8 %14, 0
  %15 = and i8 %11, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp.not = icmp eq i8 %15, 4
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end4, label %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge

usb_endpoint_is_isoc_in.exit.cleanup_crit_edge:   ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %usb_endpoint_is_isoc_in.exit
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 2
  %16 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceNumber, align 2
  %conv6 = zext i8 %17 to i32
  %sub = add nsw i32 %conv6, -1
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %alts, i32 0, i32 3
  %18 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bAlternateSetting, align 1
  %conv8 = zext i8 %19 to i32
  %call9 = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %sub, i32 noundef %conv8) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end4
  %bInterfaceClass.i39 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 5
  %20 = ptrtoint ptr %bInterfaceClass.i39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceClass.i39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.not.i40 = icmp eq i8 %21, -1
  br i1 %cmp.not.i40, label %lor.lhs.false.i43, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i43:                                ; preds = %lor.lhs.false11
  %bInterfaceSubClass.i41 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 6
  %22 = ptrtoint ptr %bInterfaceSubClass.i41 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterfaceSubClass.i41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp4.not.i42 = icmp eq i8 %23, 2
  br i1 %cmp4.not.i42, label %lor.lhs.false.i43.roland_sanity_check_iface.exit51_crit_edge, label %land.lhs.true.i46

lor.lhs.false.i43.roland_sanity_check_iface.exit51_crit_edge: ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit51

land.lhs.true.i46:                                ; preds = %lor.lhs.false.i43
  %bInterfaceProtocol.i44 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 7
  %24 = ptrtoint ptr %bInterfaceProtocol.i44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bInterfaceProtocol.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp8.not.i45 = icmp eq i8 %25, 2
  br i1 %cmp8.not.i45, label %land.lhs.true.i46.roland_sanity_check_iface.exit51_crit_edge, label %land.lhs.true.i46.cleanup_crit_edge

land.lhs.true.i46.cleanup_crit_edge:              ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i46.roland_sanity_check_iface.exit51_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %roland_sanity_check_iface.exit51

roland_sanity_check_iface.exit51:                 ; preds = %land.lhs.true.i46.roland_sanity_check_iface.exit51_crit_edge, %lor.lhs.false.i43.roland_sanity_check_iface.exit51_crit_edge
  %bNumEndpoints.i47 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 4
  %26 = ptrtoint ptr %bNumEndpoints.i47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp13.i48.not = icmp eq i8 %27, 0
  br i1 %cmp13.i48.not, label %roland_sanity_check_iface.exit51.cleanup_crit_edge, label %if.end14

roland_sanity_check_iface.exit51.cleanup_crit_edge: ; preds = %roland_sanity_check_iface.exit51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %roland_sanity_check_iface.exit51
  %endpoint15 = getelementptr inbounds %struct.usb_host_interface, ptr %call9, i32 0, i32 3
  %28 = ptrtoint ptr %endpoint15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %endpoint15, align 4
  %bmAttributes.i.i52 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bmAttributes.i.i52 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bmAttributes.i.i52, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i.not.i53 = icmp eq i8 %32, 1
  br i1 %cmp.i.not.i53, label %usb_endpoint_is_isoc_out.exit, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_endpoint_is_isoc_out.exit:                    ; preds = %if.end14
  %bEndpointAddress.i.i54 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress.i.i54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress.i.i54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool19.not = icmp slt i8 %34, 0
  br i1 %tobool19.not, label %usb_endpoint_is_isoc_out.exit.cleanup_crit_edge, label %if.end3.i

usb_endpoint_is_isoc_out.exit.cleanup_crit_edge:  ; preds = %usb_endpoint_is_isoc_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %usb_endpoint_is_isoc_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %bEndpointAddress.i.i54 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress.i.i54, align 1
  %bInterfaceNumber24 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 2
  %37 = ptrtoint ptr %bInterfaceNumber24 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bInterfaceNumber24, align 2
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %39 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %sync_ep.i, align 8
  %sync_iface.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %40 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %sync_iface.i, align 1
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 3
  %41 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bAlternateSetting.i, align 1
  %sync_altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %43 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %sync_altsetting.i, align 2
  %sync_ep_idx.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %44 = ptrtoint ptr %sync_ep_idx.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %sync_ep_idx.i, align 1
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %45 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %implicit_fb.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_roland_capture_quirk, %if.then10.i)) #4
          to label %cleanup [label %if.then10.i], !srcloc !21

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev11.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %46 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev11.i, align 4
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  %iface13.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %48 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %iface13.i, align 8
  %conv14.i = zext i8 %49 to i32
  %altsetting15.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %50 = ptrtoint ptr %altsetting15.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %altsetting15.i, align 1
  %conv16.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool17.not.i = icmp sgt i8 %36, -1
  %cond.i = select i1 %tobool17.not.i, ptr @.str.5, ptr @.str.4
  %52 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sync_ep.i, align 8
  %conv19.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sync_iface.i, align 1
  %conv21.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sync_altsetting.i, align 2
  %conv23.i = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, ptr noundef %dev12.i, ptr noundef nonnull @.str.3, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef nonnull %cond.i, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv23.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end3.i, %usb_endpoint_is_isoc_out.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %roland_sanity_check_iface.exit51.cleanup_crit_edge, %land.lhs.true.i46.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %roland_sanity_check_iface.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %roland_sanity_check_iface.exit.cleanup_crit_edge ], [ 0, %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge ], [ 0, %roland_sanity_check_iface.exit51.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %usb_endpoint_is_isoc_out.exit.cleanup_crit_edge ], [ 1, %if.end3.i ], [ 1, %if.then10.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.i46.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__add_generic_implicit_fb(ptr noundef %chip, ptr nocapture noundef %fmt, i32 noundef %iface, i32 noundef %altset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %iface, i32 noundef %altset) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bInterfaceClass, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 -1, label %if.end.lor.lhs.false_crit_edge
    i8 1, label %if.end.lor.lhs.false_crit_edge35
  ]

if.end.lor.lhs.false_crit_edge35:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge35
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9 = icmp eq i8 %4, 0
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes.i.i, align 1
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i.not.i = icmp eq i8 %9, 1
  br i1 %cmp.i.not.i, label %usb_endpoint_is_isoc_in.exit, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

usb_endpoint_is_isoc_in.exit:                     ; preds = %if.end12
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp slt i8 %11, 0
  %12 = and i8 %8, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp18.not = icmp eq i8 %12, 4
  %or.cond = select i1 %tobool15.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end3.i, label %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge

usb_endpoint_is_isoc_in.exit.cleanup_crit_edge:   ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %usb_endpoint_is_isoc_in.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %15 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %sync_ep.i, align 8
  %conv4.i = trunc i32 %iface to i8
  %sync_iface.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %16 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4.i, ptr %sync_iface.i, align 1
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bAlternateSetting.i, align 1
  %sync_altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %19 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sync_altsetting.i, align 2
  %sync_ep_idx.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %20 = ptrtoint ptr %sync_ep_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sync_ep_idx.i, align 1
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %21 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %implicit_fb.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__add_generic_implicit_fb, %if.then10.i)) #4
          to label %cleanup [label %if.then10.i], !srcloc !21

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev11.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11.i, align 4
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  %iface13.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %24 = ptrtoint ptr %iface13.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iface13.i, align 8
  %conv14.i = zext i8 %25 to i32
  %altsetting15.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %26 = ptrtoint ptr %altsetting15.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %altsetting15.i, align 1
  %conv16.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool17.not.i = icmp sgt i8 %14, -1
  %cond.i = select i1 %tobool17.not.i, ptr @.str.5, ptr @.str.4
  %28 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sync_ep.i, align 8
  %conv19.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %sync_iface.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sync_iface.i, align 1
  %conv21.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %sync_altsetting.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sync_altsetting.i, align 2
  %conv23.i = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, ptr noundef %dev12.i, ptr noundef nonnull @.str.3, i32 noundef %conv14.i, i32 noundef %conv16.i, ptr noundef nonnull %cond.i, i32 noundef %conv19.i, i32 noundef %conv21.i, i32 noundef %conv23.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.end3.i, %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %usb_endpoint_is_isoc_in.exit.cleanup_crit_edge ], [ 1, %if.end3.i ], [ 1, %if.then10.i ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"capture_implicit_fb_quirks", i1 false, i1 false}
!1 = !{!"../sound/usb/implicit.c", i32 79, i32 47}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/implicit.c", i32 103, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @add_implicit_fb_sync_ep.__UNIQUE_ID_ddebug239, !3, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @playback_implicit_fb_quirks, !11, !"playback_implicit_fb_quirks", i1 false, i1 false}
!11 = !{!"../sound/usb/implicit.c", i32 47, i32 47}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148946465, i64 2148946470, i64 2148946483, i64 2148946527, i64 2148946561, i64 2148946582}
!22 = !{i8 0, i8 2}
!23 = !{i32 0, i32 33}
