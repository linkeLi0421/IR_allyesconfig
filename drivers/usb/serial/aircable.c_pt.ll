; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/aircable.c_pt.bc'
source_filename = "../drivers/usb/serial/aircable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_aircable__242_157_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @aircable_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [103 x i8] c"aircable.author=Naranjo, Manuel Francisco <naranjo.manuel@gmail.com>, Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [41 x i8] c"aircable.description=AIRcable USB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [42 x i8] c"aircable.file=drivers/usb/serial/aircable\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"aircable.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aircable\00", [23 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5834, i16 5378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@aircable_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, ptr null, ptr null, ptr @aircable_calc_num_ports, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_serial_generic_throttle, ptr @usb_serial_generic_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aircable_process_read_urb, ptr @aircable_prepare_write_buffer }, [72 x i8] zeroinitializer }, align 32
@aircable_calc_num_ports.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aircable_calc_num_ports\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/serial/aircable.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ignoring interface with no bulk-out endpoints\0A\00", [49 x i8] zeroinitializer }, align 32
@aircable_process_packet.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aircable_process_packet\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - malformed packet\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 153, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 157, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 66, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"aircable_device\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 139, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 92, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [33 x i8] c"../drivers/usb/serial/aircable.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_aircable__242_157_usb_serial_module_init6, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @aircable_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aircable_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aircable_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef readonly %epds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %0 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_bulk_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aircable_calc_num_ports.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aircable_calc_num_ports, %if.then4)) #4
          to label %return [label %if.then4], !srcloc !35

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aircable_calc_num_ports.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  br label %return

return:                                           ; preds = %if.then4, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %if.then4 ], [ 1, %entry.return_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_throttle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_unthrottle(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aircable_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1 = icmp eq i8 %7, 0
  %phi.cast = zext i1 %cmp1 to i32
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %actual_length, align 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %9 = phi i32 [ %.pr, %land.rhs ], [ %5, %entry.land.end_crit_edge ]
  %10 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %entry.land.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp424.not = icmp eq i32 %9, 0
  br i1 %cmp424.not, label %land.end.if.end_crit_edge, label %for.body.lr.ph

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph:                                   ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %packet.addr.0.idx.i = select i1 %tobool.not.i, i32 0, i32 4
  %port8.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %arrayidx9 = getelementptr i8, ptr %3, i32 %packet.addr.0.idx.i
  br label %for.body

for.body:                                         ; preds = %aircable_process_packet.exit.for.body_crit_edge, %for.body.lr.ph
  %11 = phi i32 [ %9, %for.body.lr.ph ], [ %14, %aircable_process_packet.exit.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %aircable_process_packet.exit.for.body_crit_edge ]
  %count.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %aircable_process_packet.exit.for.body_crit_edge ]
  %sub = sub i32 %11, %i.026
  %12 = tail call i32 @llvm.smin.i32(i32 %sub, i32 64)
  %sub.i = add i32 %12, -4
  %len.addr.0.i = select i1 %tobool.not.i, i32 %12, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i)
  %cmp.i = icmp slt i32 %len.addr.0.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aircable_process_packet.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aircable_process_read_urb, %if.then5.i)) #4
          to label %aircable_process_packet.exit [label %if.then5.i], !srcloc !35

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aircable_process_packet.__UNIQUE_ID_ddebug239, ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #4
  br label %aircable_process_packet.exit

if.end7.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %packet.addr.0.i = getelementptr i8, ptr %arrayidx9, i32 %i.026
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port8.i, ptr noundef %packet.addr.0.i, i8 noundef zeroext 0, i32 noundef %len.addr.0.i) #4
  br label %aircable_process_packet.exit

aircable_process_packet.exit:                     ; preds = %if.end7.i, %if.then5.i, %do.body.i
  %retval.0.i = phi i32 [ %len.addr.0.i, %if.end7.i ], [ 0, %if.then5.i ], [ 0, %do.body.i ]
  %add = add i32 %retval.0.i, %count.025
  %add10 = add i32 %i.026, 64
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  %cmp4 = icmp ugt i32 %14, %add10
  br i1 %cmp4, label %aircable_process_packet.exit.for.body_crit_edge, label %for.end

aircable_process_packet.exit.for.body_crit_edge:  ; preds = %aircable_process_packet.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %aircable_process_packet.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %port11 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port11) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %land.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aircable_prepare_write_buffer(ptr noundef %port, ptr noundef %dest, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %add.ptr = getelementptr i8, ptr %dest, i32 4
  %sub = add i32 %size, -4
  %call6 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %add.ptr, i32 noundef %sub) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 32, ptr %dest, align 1
  %arrayidx11 = getelementptr i8, ptr %dest, i32 1
  %1 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 41, ptr %arrayidx11, align 1
  %conv12 = trunc i32 %call6 to i16
  %arrayidx13 = getelementptr i8, ptr %dest, i32 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv12) #4
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %arrayidx13, align 1
  %add = add i32 %call6, 4
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_aircable__242_157_usb_serial_module_init6, !1, !"__initcall__kmod_aircable__242_157_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/aircable.c", i32 157, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/aircable.c", i32 159, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/aircable.c", i32 160, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/aircable.c", i32 161, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/aircable.c", i32 66, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/aircable.c", i32 153, i32 41}
!15 = !{ptr @aircable_device, !16, !"aircable_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/aircable.c", i32 139, i32 33}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/aircable.c", i32 92, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aircable_calc_num_ports.__UNIQUE_ID_ddebug238, !18, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/aircable.c", i32 108, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @aircable_process_packet.__UNIQUE_ID_ddebug239, !23, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148527714, i64 2148527719, i64 2148527732, i64 2148527776, i64 2148527810, i64 2148527831}
