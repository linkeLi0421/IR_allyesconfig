; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_dwlib.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dwlib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw8250_do_set_termios\22, \22a\22\09"
module asm "\09.weak\09__crc_dw8250_do_set_termios\09\09\09\09"
module asm "\09.long\09__crc_dw8250_do_set_termios\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22dw8250_do_set_termios\22\09\09\09\09\09"
module asm "__kstrtabns_dw8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw8250_setup_port\22, \22a\22\09"
module asm "\09.weak\09__crc_dw8250_setup_port\09\09\09\09"
module asm "\09.long\09__crc_dw8250_setup_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw8250_setup_port:\09\09\09\09\09"
module asm "\09.asciz \09\22dw8250_setup_port\22\09\09\09\09\09"
module asm "__kstrtabns_dw8250_setup_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.dw8250_port_data = type { i32, %struct.uart_8250_dma, i8 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_dw8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_dw8250_do_set_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw8250_do_set_termios to i32), ptr @__kstrtab_dw8250_do_set_termios, ptr @__kstrtabns_dw8250_do_set_termios }, section "___ksymtab_gpl+dw8250_do_set_termios", align 4
@dw8250_setup_port.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8250_base\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw8250_setup_port\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/tty/serial/8250/8250_dwlib.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Designware UART version %c.%c%c\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_dw8250_setup_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw8250_setup_port = external dso_local constant [0 x i8], align 1
@__ksymtab_dw8250_setup_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw8250_setup_port to i32), ptr @__kstrtab_dw8250_setup_port, ptr @__kstrtabns_dw8250_setup_port }, section "___ksymtab_gpl+dw8250_setup_port", align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [40 x i8] c"../drivers/tty/serial/8250/8250_dwlib.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 103, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_dw8250_do_set_termios, ptr @__ksymtab_dw8250_setup_port, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw8250_do_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 34
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %and = and i32 %1, -9
  store i32 %and, ptr %status, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %1, 8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @serial8250_do_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw8250_setup_port(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.i = icmp eq i8 %1, 6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  br label %dw8250_readl_ext.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  br label %dw8250_readl_ext.exit

dw8250_readl_ext.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i64 = phi i32 [ %4, %if.then.i ], [ %5, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64)
  %tobool.not = icmp eq i32 %retval.0.i64, 0
  br i1 %tobool.not, label %dw8250_readl_ext.exit.cleanup_crit_edge, label %do.body

dw8250_readl_ext.exit.cleanup_crit_edge:          ; preds = %dw8250_readl_ext.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %dw8250_readl_ext.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw8250_setup_port.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw8250_setup_port, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !21

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %shr = lshr i32 %retval.0.i64, 24
  %shr7 = lshr i32 %retval.0.i64, 16
  %and8 = and i32 %shr7, 255
  %shr9 = lshr i32 %retval.0.i64, 8
  %and10 = and i32 %shr9, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw8250_setup_port.__UNIQUE_ID_ddebug234, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and8, i32 noundef %and10) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %9, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 -1) #4
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp.i71 = icmp eq i8 %11, 6
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %13, i32 192
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #4
  br i1 %cmp.i71, label %if.then.i74, label %if.end.i75

if.then.i74:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  br label %dw8250_readl_ext.exit77

if.end.i75:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  br label %dw8250_readl_ext.exit77

dw8250_readl_ext.exit77:                          ; preds = %if.end.i75, %if.then.i74
  %retval.0.i76 = phi i32 [ %14, %if.then.i74 ], [ %15, %if.end.i75 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %17, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i76)
  %tobool13.not = icmp eq i32 %retval.0.i76, 0
  br i1 %tobool13.not, label %dw8250_readl_ext.exit77.if.end16_crit_edge, label %if.then14

dw8250_readl_ext.exit77.if.end16_crit_edge:       ; preds = %dw8250_readl_ext.exit77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %dw8250_readl_ext.exit77
  call void @__sanitizer_cov_trace_pc() #6
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 4
  %20 = tail call i32 @llvm.ctlz.i32(i32 %retval.0.i76, i1 true) #4, !range !22
  %21 = trunc i32 %20 to i8
  %conv = sub nuw nsw i8 32, %21
  %dlf_size = getelementptr inbounds %struct.dw8250_port_data, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %dlf_size to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %dlf_size, align 4
  %get_divisor = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 9
  %23 = ptrtoint ptr %get_divisor to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dw8250_get_divisor, ptr %get_divisor, align 4
  %set_divisor = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 10
  %24 = ptrtoint ptr %set_divisor to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dw8250_set_divisor, ptr %set_divisor, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %dw8250_readl_ext.exit77.if.end16_crit_edge
  %25 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp.i89 = icmp eq i8 %26, 6
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %28, i32 244
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #4
  br i1 %cmp.i89, label %if.then.i92, label %if.end.i93

if.then.i92:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  br label %dw8250_readl_ext.exit95

if.end.i93:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  br label %dw8250_readl_ext.exit95

dw8250_readl_ext.exit95:                          ; preds = %if.end.i93, %if.then.i92
  %retval.0.i94 = phi i32 [ %29, %if.then.i92 ], [ %30, %if.end.i93 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %tobool18.not = icmp eq i32 %retval.0.i94, 0
  br i1 %tobool18.not, label %dw8250_readl_ext.exit95.cleanup_crit_edge, label %if.end20

dw8250_readl_ext.exit95.cleanup_crit_edge:        ; preds = %dw8250_readl_ext.exit95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %dw8250_readl_ext.exit95
  %and21 = and i32 %retval.0.i94, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 38
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 33
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or = or i32 %33, 134217728
  store i32 %or, ptr %flags, align 4
  %34 = lshr i32 %retval.0.i94, 12
  %mul = and i32 %34, 4080
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 23
  %35 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %fifosize, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 3
  %36 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %capabilities, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %and27 = and i32 %retval.0.i94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %capabilities30 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 3
  %37 = ptrtoint ptr %capabilities30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capabilities30, align 4
  %or31 = or i32 %38, 2048
  store i32 %or31, ptr %capabilities30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %and33 = and i32 %retval.0.i94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %capabilities36 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 3
  %39 = ptrtoint ptr %capabilities36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capabilities36, align 4
  %or37 = or i32 %40, 65536
  store i32 %or37, ptr %capabilities36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %dw8250_readl_ext.exit95.cleanup_crit_edge, %dw8250_readl_ext.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw8250_get_divisor(ptr nocapture noundef readonly %p, i32 noundef %baud, ptr nocapture noundef writeonly %frac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %baud, 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 22
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uartclk, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %.frozen, %mul
  %4 = mul i32 %div, %mul
  %rem2.decomposed = sub i32 %.frozen, %4
  %dlf_size = getelementptr inbounds %struct.dw8250_port_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dlf_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dlf_size, align 4
  %conv = zext i8 %6 to i32
  %shl = shl i32 %rem2.decomposed, %conv
  %div310 = lshr exact i32 %mul, 1
  %add = add i32 %shl, %div310
  %div4 = udiv i32 %add, %mul
  %7 = ptrtoint ptr %frac to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div4, ptr %frac, align 4
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw8250_set_divisor(ptr noundef %p, i32 noundef %baud, i32 noundef %quot, i32 noundef %quot_frac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.i = icmp eq i8 %1, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.i, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %quot_frac) #4, !srcloc !23
  br label %dw8250_writel_ext.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %quot_frac) #4
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %4) #4, !srcloc !23
  br label %dw8250_writel_ext.exit

dw8250_writel_ext.exit:                           ; preds = %do.body2.i, %do.body.i
  tail call void @serial8250_do_set_divisor(ptr noundef %p, i32 noundef %baud, i32 noundef %quot, i32 noundef %quot_frac) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_divisor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_dw8250_do_set_termios, !1, !"__ksymtab_dw8250_do_set_termios", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_dwlib.c", i32 88, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_dwlib.c", i32 103, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dw8250_setup_port.__UNIQUE_ID_ddebug234, !3, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!8 = !{ptr @__ksymtab_dw8250_setup_port, !9, !"__ksymtab_dw8250_setup_port", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_dwlib.c", i32 136, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2154479545}
!20 = !{i64 2154480039}
!21 = !{i64 2148774658, i64 2148774663, i64 2148774676, i64 2148774720, i64 2148774754, i64 2148774775}
!22 = !{i32 0, i32 33}
!23 = !{i64 4772676}
