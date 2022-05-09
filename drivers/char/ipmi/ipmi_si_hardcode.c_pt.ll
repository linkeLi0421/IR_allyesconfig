; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_hardcode.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_hardcode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipmi_plat_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_type = internal constant [13 x i8] c"ipmi_si.type\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_type = internal constant %struct.kparam_string { i32 30, ptr @si_type_str }, align 4
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_string_type } }, section "__param", align 4
@__UNIQUE_ID_typetype227 = internal constant [29 x i8] c"ipmi_si.parmtype=type:string\00", section ".modinfo", align 1
@__UNIQUE_ID_type228 = internal constant [215 x i8] c"ipmi_si.parm=type:Defines the type of each interface, each interface separated by commas.  The types are 'kcs', 'smic', and 'bt'.  For example si_type=kcs,bt will set the first interface to kcs and the second to bt\00", section ".modinfo", align 1
@__param_str_addrs = internal constant [14 x i8] c"ipmi_si.addrs\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_addrs = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_addrs, ptr @param_ops_ulong, ptr @addrs }, align 4
@__param_addrs = internal constant %struct.kernel_param { ptr @__param_str_addrs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_addrs } }, section "__param", align 4
@__UNIQUE_ID_addrstype229 = internal constant [38 x i8] c"ipmi_si.parmtype=addrs:array of ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_addrs230 = internal constant [183 x i8] c"ipmi_si.parm=addrs:Sets the memory address of each interface, the addresses separated by commas.  Only use if an interface is in memory.  Otherwise, set it to zero or leave it blank.\00", section ".modinfo", align 1
@__param_str_ports = internal constant [14 x i8] c"ipmi_si.ports\00", align 1
@__param_arr_ports = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_ports, ptr @param_ops_uint, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype231 = internal constant [37 x i8] c"ipmi_si.parmtype=ports:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ports232 = internal constant [178 x i8] c"ipmi_si.parm=ports:Sets the port address of each interface, the addresses separated by commas.  Only use if an interface is a port.  Otherwise, set it to zero or leave it blank.\00", section ".modinfo", align 1
@__param_str_irqs = internal constant [13 x i8] c"ipmi_si.irqs\00", align 1
@__param_arr_irqs = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_irqs, ptr @param_ops_int, ptr @irqs }, align 4
@__param_irqs = internal constant %struct.kernel_param { ptr @__param_str_irqs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_irqs } }, section "__param", align 4
@__UNIQUE_ID_irqstype233 = internal constant [35 x i8] c"ipmi_si.parmtype=irqs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irqs234 = internal constant [181 x i8] c"ipmi_si.parm=irqs:Sets the interrupt of each interface, the addresses separated by commas.  Only use if an interface has an interrupt.  Otherwise, set it to zero or leave it blank.\00", section ".modinfo", align 1
@__param_str_regspacings = internal constant [20 x i8] c"ipmi_si.regspacings\00", align 1
@__param_arr_regspacings = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_regspacings, ptr @param_ops_int, ptr @regspacings }, align 4
@__param_regspacings = internal constant %struct.kernel_param { ptr @__param_str_regspacings, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_regspacings } }, section "__param", align 4
@__UNIQUE_ID_regspacingstype235 = internal constant [42 x i8] c"ipmi_si.parmtype=regspacings:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_regspacings236 = internal constant [243 x i8] c"ipmi_si.parm=regspacings:The number of bytes between the start address and each successive register used by the interface.  For instance, if the start address is 0xca2 and the spacing is 2, then the second address is at 0xca4.  Defaults to 1.\00", section ".modinfo", align 1
@__param_str_regsizes = internal constant [17 x i8] c"ipmi_si.regsizes\00", align 1
@__param_arr_regsizes = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_regsizes, ptr @param_ops_int, ptr @regsizes }, align 4
@__param_regsizes = internal constant %struct.kernel_param { ptr @__param_str_regsizes, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_regsizes } }, section "__param", align 4
@__UNIQUE_ID_regsizestype237 = internal constant [39 x i8] c"ipmi_si.parmtype=regsizes:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_regsizes238 = internal constant [240 x i8] c"ipmi_si.parm=regsizes:The size of the specific IPMI register in bytes. This should generally be 1, 2, 4, or 8 for an 8-bit, 16-bit, 32-bit, or 64-bit register.  Use this if you the 8-bit IPMI register has to be read from a larger register.\00", section ".modinfo", align 1
@__param_str_regshifts = internal constant [18 x i8] c"ipmi_si.regshifts\00", align 1
@__param_arr_regshifts = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_regshifts, ptr @param_ops_int, ptr @regshifts }, align 4
@__param_regshifts = internal constant %struct.kernel_param { ptr @__param_str_regshifts, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_regshifts } }, section "__param", align 4
@__UNIQUE_ID_regshiftstype239 = internal constant [40 x i8] c"ipmi_si.parmtype=regshifts:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_regshifts240 = internal constant [205 x i8] c"ipmi_si.parm=regshifts:The amount to shift the data read from the. IPMI register, in bits.  For instance, if the data is read from a 32-bit word and the IPMI data is in bit 8-15, then the shift would be 8\00", section ".modinfo", align 1
@__param_str_slave_addrs = internal constant [20 x i8] c"ipmi_si.slave_addrs\00", align 1
@__param_arr_slave_addrs = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_slave_addrs, ptr @param_ops_int, ptr @slave_addrs }, align 4
@__param_slave_addrs = internal constant %struct.kernel_param { ptr @__param_str_slave_addrs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.62 { ptr @__param_arr_slave_addrs } }, section "__param", align 4
@__UNIQUE_ID_slave_addrstype241 = internal constant [42 x i8] c"ipmi_si.parmtype=slave_addrs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_slave_addrs242 = internal constant [187 x i8] c"ipmi_si.parm=slave_addrs:Set the default IPMB slave address for the controller.  Normally this is 0x20, but can be overridden by this parm.  This is an array indexed by interface number.\00", section ".modinfo", align 1
@si_type_str = internal global [30 x i8] zeroinitializer, section ".init.data", align 1
@num_ports = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ports = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@num_addrs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@addrs = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardcode-ipmi-si\00", [47 x i8] zeroinitializer }, align 32
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_irqs = internal global i32 0, section ".init.data", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqs = internal global [4 x i32] zeroinitializer, section ".init.data", align 4
@num_regspacings = internal global i32 0, section ".init.data", align 4
@regspacings = internal global [4 x i32] zeroinitializer, section ".init.data", align 4
@num_regsizes = internal global i32 0, section ".init.data", align 4
@regsizes = internal global [4 x i32] zeroinitializer, section ".init.data", align 4
@num_regshifts = internal global i32 0, section ".init.data", align 4
@regshifts = internal global [4 x i32] zeroinitializer, section ".init.data", align 4
@num_slave_addrs = internal global i32 0, section ".init.data", align 4
@slave_addrs = internal global [4 x i32] zeroinitializer, section ".init.data", align 4
@si_to_str = external dso_local constant [0 x ptr], align 4
@ipmi_hardcode_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014ipmi_hardcode: Interface type specified for interface %d, was invalid: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipmi_hardcode_init_one\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/char/ipmi/ipmi_si_hardcode.c\00", [59 x i8] zeroinitializer }, align 32
@ipmi_hardcode_init_one._entry_ptr = internal global ptr @ipmi_hardcode_init_one._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"num_ports\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 22, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 21, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"num_addrs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 20, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"addrs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 19, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 129, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [40 x i8] c"../drivers/char/ipmi/ipmi_si_hardcode.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 75, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_addrs230, ptr @__UNIQUE_ID_addrstype229, ptr @__UNIQUE_ID_irqs234, ptr @__UNIQUE_ID_irqstype233, ptr @__UNIQUE_ID_ports232, ptr @__UNIQUE_ID_portstype231, ptr @__UNIQUE_ID_regshifts240, ptr @__UNIQUE_ID_regshiftstype239, ptr @__UNIQUE_ID_regsizes238, ptr @__UNIQUE_ID_regsizestype237, ptr @__UNIQUE_ID_regspacings236, ptr @__UNIQUE_ID_regspacingstype235, ptr @__UNIQUE_ID_slave_addrs242, ptr @__UNIQUE_ID_slave_addrstype241, ptr @__UNIQUE_ID_type228, ptr @__UNIQUE_ID_typetype227, ptr @__param_addrs, ptr @__param_irqs, ptr @__param_ports, ptr @__param_regshifts, ptr @__param_regsizes, ptr @__param_regspacings, ptr @__param_slave_addrs, ptr @__param_type, ptr @ipmi_hardcode_init_one._entry, ptr @ipmi_hardcode_init_one._entry_ptr, ptr @num_ports, ptr @ports, ptr @num_addrs, ptr @addrs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_hardcode_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_hardcode_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %si_type = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %si_type) #7
  %0 = call ptr @memset(ptr %si_type, i32 0, i32 16)
  %1 = load i8, ptr @si_type_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.for.body12.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body12.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.preheader

land.rhsthread-pre-split:                         ; preds = %if.then7
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %incdec.ptr, align 1
  %cmp5.not = icmp eq i8 %.pr, 0
  br i1 %cmp5.not, label %land.rhsthread-pre-split.for.body12.preheader_crit_edge, label %land.rhsthread-pre-split.for.body_crit_edge

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

land.rhsthread-pre-split.for.body12.preheader_crit_edge: ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.preheader

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05461 = phi i32 [ %inc, %land.rhsthread-pre-split.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %str.05560 = phi ptr [ %incdec.ptr, %land.rhsthread-pre-split.for.body_crit_edge ], [ @si_type_str, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %si_type, i32 0, i32 %i.05461
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %str.05560, ptr %arrayidx, align 4
  %call = tail call ptr @strchr(ptr noundef %str.05560, i32 noundef 44)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.body12.preheader_crit_edge, label %if.then7

for.body.for.body12.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.preheader

if.then7:                                         ; preds = %for.body
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call, align 1
  %inc = add nuw nsw i32 %i.05461, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.then7.for.body12.preheader_crit_edge, label %land.rhsthread-pre-split

if.then7.for.body12.preheader_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.preheader

for.body12.preheader:                             ; preds = %if.then7.for.body12.preheader_crit_edge, %for.body.for.body12.preheader_crit_edge, %land.rhsthread-pre-split.for.body12.preheader_crit_edge, %entry.for.body12.preheader_crit_edge
  br label %for.body12

for.body12:                                       ; preds = %for.inc30.for.body12_crit_edge, %for.body12.preheader
  %i.156 = phi i32 [ %inc31, %for.inc30.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %5 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.156, i32 %5)
  %cmp13 = icmp ult i32 %i.156, %5
  br i1 %cmp13, label %land.lhs.true, label %for.body12.if.end20_crit_edge

for.body12.if.end20_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx15 = getelementptr [4 x i32], ptr @ports, i32 0, i32 %i.156
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end20_crit_edge, label %if.then17

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr [4 x ptr], ptr %si_type, i32 0, i32 %i.156
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  tail call fastcc void @ipmi_hardcode_init_one(ptr noundef %9, i32 noundef %i.156, i32 noundef %7, i32 noundef 0) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true.if.end20_crit_edge, %for.body12.if.end20_crit_edge
  %10 = load i32, ptr @num_addrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.156, i32 %10)
  %cmp21 = icmp ult i32 %i.156, %10
  br i1 %cmp21, label %land.lhs.true23, label %if.end20.for.inc30_crit_edge

if.end20.for.inc30_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30

land.lhs.true23:                                  ; preds = %if.end20
  %arrayidx24 = getelementptr [4 x i32], ptr @addrs, i32 0, i32 %i.156
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %land.lhs.true23.for.inc30_crit_edge, label %if.then26

land.lhs.true23.for.inc30_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27 = getelementptr [4 x ptr], ptr %si_type, i32 0, i32 %i.156
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx27, align 4
  tail call fastcc void @ipmi_hardcode_init_one(ptr noundef %14, i32 noundef %i.156, i32 noundef %12, i32 noundef 1) #10
  br label %for.inc30

for.inc30:                                        ; preds = %if.then26, %land.lhs.true23.for.inc30_crit_edge, %if.end20.for.inc30_crit_edge
  %inc31 = add nuw nsw i32 %i.156, 1
  %exitcond58.not = icmp eq i32 %inc31, 4
  br i1 %exitcond58.not, label %for.end32, label %for.inc30.for.body12_crit_edge

for.inc30.for.body12_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end32:                                        ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %si_type) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmi_hardcode_init_one(ptr noundef %si_type_str, i32 noundef %i, i32 noundef %addr, i32 noundef %addr_space) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %p = alloca %struct.ipmi_plat_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %p) #7
  %tobool.not = icmp eq ptr %si_type_str, null
  %0 = call ptr @memset(ptr %p, i32 0, i32 32)
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %lor.lhs.false

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %si_type_str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %si_type_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end5_crit_edge, label %if.else

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @match_string(ptr noundef nonnull @si_to_str, i32 noundef -1, ptr noundef nonnull %si_type_str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i, ptr noundef nonnull %si_type_str) #11
  br label %cleanup

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call.sink = phi i32 [ 1, %lor.lhs.false.if.end5_crit_edge ], [ 1, %entry.if.end5_crit_edge ], [ %call, %if.else.if.end5_crit_edge ]
  %type4 = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.sink, ptr %type4, align 4
  %arrayidx = getelementptr [4 x i32], ptr @regsizes, i32 0, i32 %i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %regsize = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 5
  %arrayidx6 = getelementptr [4 x i32], ptr @slave_addrs, i32 0, i32 %i
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %slave_addr = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 8
  %8 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %slave_addr, align 4
  %addr_source = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 9
  %9 = ptrtoint ptr %addr_source to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %addr_source, align 4
  %arrayidx7 = getelementptr [4 x i32], ptr @regshifts, i32 0, i32 %i
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %regshift = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %regshift to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %regshift, align 4
  %13 = ptrtoint ptr %regsize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %regsize, align 4
  %addr10 = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 3
  %14 = ptrtoint ptr %addr10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr, ptr %addr10, align 4
  %space = getelementptr inbounds %struct.ipmi_plat_data, ptr %p, i32 0, i32 2
  %15 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr_space, ptr %space, align 4
  %call11 = call ptr @ipmi_platform_add(ptr noundef nonnull @.str, i32 noundef %i, ptr noundef nonnull %p) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_hardcode_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipmi_remove_platform_device_by_name(ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_remove_platform_device_by_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmi_si_hardcode_match(i32 noundef %addr_space, i32 noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr_space)
  %cmp = icmp eq i32 %addr_space, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %entry
  %0 = load i32, ptr @num_addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp523.not = icmp eq i32 %0, 0
  br i1 %cmp523.not, label %for.cond4.preheader.cleanup_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.cleanup_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, ptr @num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp126.not = icmp eq i32 %1, 0
  br i1 %cmp126.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.027, 1
  %exitcond32.not = icmp eq i32 %inc, %1
  br i1 %exitcond32.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @ports, i32 0, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp2 = icmp eq i32 %3, %addr
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4:                                        ; preds = %for.body6
  %inc12 = add nuw i32 %i.124, 1
  %exitcond.not = icmp eq i32 %inc12, %0
  br i1 %exitcond.not, label %for.cond4.cleanup_crit_edge, label %for.cond4.for.body6_crit_edge

for.cond4.for.body6_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.cond4.cleanup_crit_edge:                      ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body6:                                        ; preds = %for.cond4.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.124 = phi i32 [ %inc12, %for.cond4.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [4 x i32], ptr @addrs, i32 0, i32 %i.124
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %addr)
  %cmp8 = icmp eq i32 %5, %addr
  br i1 %cmp8, label %for.body6.cleanup_crit_edge, label %for.cond4

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body6.cleanup_crit_edge, %for.cond4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond4.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond4.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body6.cleanup_crit_edge ], [ 0, %for.cond4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_platform_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_type, !1, !"__param_type", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_typetype227, !1, !"__UNIQUE_ID_typetype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_type228, !4, !"__UNIQUE_ID_type228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 35, i32 1}
!5 = !{ptr @__param_addrs, !6, !"__param_addrs", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 37, i32 1}
!7 = !{ptr @__UNIQUE_ID_addrstype229, !6, !"__UNIQUE_ID_addrstype229", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_addrs230, !9, !"__UNIQUE_ID_addrs230", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 38, i32 1}
!10 = !{ptr @__param_ports, !11, !"__param_ports", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 40, i32 1}
!12 = !{ptr @__UNIQUE_ID_portstype231, !11, !"__UNIQUE_ID_portstype231", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ports232, !14, !"__UNIQUE_ID_ports232", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 41, i32 1}
!15 = !{ptr @__param_irqs, !16, !"__param_irqs", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 43, i32 1}
!17 = !{ptr @__UNIQUE_ID_irqstype233, !16, !"__UNIQUE_ID_irqstype233", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_irqs234, !19, !"__UNIQUE_ID_irqs234", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 44, i32 1}
!20 = !{ptr @__param_regspacings, !21, !"__param_regspacings", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 46, i32 1}
!22 = !{ptr @__UNIQUE_ID_regspacingstype235, !21, !"__UNIQUE_ID_regspacingstype235", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_regspacings236, !24, !"__UNIQUE_ID_regspacings236", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 47, i32 1}
!25 = !{ptr @__param_regsizes, !26, !"__param_regsizes", i1 false, i1 false}
!26 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 49, i32 1}
!27 = !{ptr @__UNIQUE_ID_regsizestype237, !26, !"__UNIQUE_ID_regsizestype237", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_regsizes238, !29, !"__UNIQUE_ID_regsizes238", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 50, i32 1}
!30 = !{ptr @__param_regshifts, !31, !"__param_regshifts", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 52, i32 1}
!32 = !{ptr @__UNIQUE_ID_regshiftstype239, !31, !"__UNIQUE_ID_regshiftstype239", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_regshifts240, !34, !"__UNIQUE_ID_regshifts240", i1 false, i1 false}
!34 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 53, i32 1}
!35 = !{ptr @__param_slave_addrs, !36, !"__param_slave_addrs", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 55, i32 1}
!37 = !{ptr @__UNIQUE_ID_slave_addrstype241, !36, !"__UNIQUE_ID_slave_addrstype241", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_slave_addrs242, !39, !"__UNIQUE_ID_slave_addrs242", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 56, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 129, i32 38}
!42 = !{ptr @si_type_str, !43, !"si_type_str", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 18, i32 22}
!44 = !{ptr @addrs, !45, !"addrs", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 19, i32 22}
!46 = !{ptr @num_addrs, !47, !"num_addrs", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 20, i32 21}
!48 = !{ptr @ports, !49, !"ports", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 21, i32 22}
!50 = !{ptr @num_ports, !51, !"num_ports", i1 false, i1 false}
!51 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 22, i32 21}
!52 = !{ptr @__param_str_type, !1, !"__param_str_type", i1 false, i1 false}
!53 = !{ptr @__param_string_type, !1, !"__param_string_type", i1 false, i1 false}
!54 = !{ptr @__param_str_addrs, !6, !"__param_str_addrs", i1 false, i1 false}
!55 = !{ptr @__param_arr_addrs, !6, !"__param_arr_addrs", i1 false, i1 false}
!56 = !{ptr @__param_str_ports, !11, !"__param_str_ports", i1 false, i1 false}
!57 = !{ptr @__param_arr_ports, !11, !"__param_arr_ports", i1 false, i1 false}
!58 = !{ptr @__param_str_irqs, !16, !"__param_str_irqs", i1 false, i1 false}
!59 = !{ptr @__param_arr_irqs, !16, !"__param_arr_irqs", i1 false, i1 false}
!60 = !{ptr @num_irqs, !61, !"num_irqs", i1 false, i1 false}
!61 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 24, i32 21}
!62 = !{ptr @irqs, !63, !"irqs", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 23, i32 22}
!64 = !{ptr @__param_str_regspacings, !21, !"__param_str_regspacings", i1 false, i1 false}
!65 = !{ptr @__param_arr_regspacings, !21, !"__param_arr_regspacings", i1 false, i1 false}
!66 = !{ptr @num_regspacings, !67, !"num_regspacings", i1 false, i1 false}
!67 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 26, i32 21}
!68 = !{ptr @regspacings, !69, !"regspacings", i1 false, i1 false}
!69 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 25, i32 22}
!70 = !{ptr @__param_str_regsizes, !26, !"__param_str_regsizes", i1 false, i1 false}
!71 = !{ptr @__param_arr_regsizes, !26, !"__param_arr_regsizes", i1 false, i1 false}
!72 = !{ptr @num_regsizes, !73, !"num_regsizes", i1 false, i1 false}
!73 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 28, i32 21}
!74 = !{ptr @regsizes, !75, !"regsizes", i1 false, i1 false}
!75 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 27, i32 22}
!76 = !{ptr @__param_str_regshifts, !31, !"__param_str_regshifts", i1 false, i1 false}
!77 = !{ptr @__param_arr_regshifts, !31, !"__param_arr_regshifts", i1 false, i1 false}
!78 = !{ptr @num_regshifts, !79, !"num_regshifts", i1 false, i1 false}
!79 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 30, i32 21}
!80 = !{ptr @regshifts, !81, !"regshifts", i1 false, i1 false}
!81 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 29, i32 22}
!82 = !{ptr @__param_str_slave_addrs, !36, !"__param_str_slave_addrs", i1 false, i1 false}
!83 = !{ptr @__param_arr_slave_addrs, !36, !"__param_arr_slave_addrs", i1 false, i1 false}
!84 = !{ptr @num_slave_addrs, !85, !"num_slave_addrs", i1 false, i1 false}
!85 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 32, i32 21}
!86 = !{ptr @slave_addrs, !87, !"slave_addrs", i1 false, i1 false}
!87 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 31, i32 12}
!88 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/char/ipmi/ipmi_si_hardcode.c", i32 75, i32 4}
!90 = !{ptr @.str.2, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.3, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ipmi_hardcode_init_one._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @ipmi_hardcode_init_one._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
