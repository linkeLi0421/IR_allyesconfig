; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/gmidi.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/gmidi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.f_midi_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_author228 = internal constant [29 x i8] c"g_midi.author=Ben Williamson\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"g_midi.file=drivers/usb/gadget/legacy/g_midi\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"g_midi.license=GPL v2\00", section ".modinfo", align 1
@__param_str_idVendor = internal constant [16 x i8] c"g_midi.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype231 = internal constant [32 x i8] c"g_midi.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor232 = internal constant [35 x i8] c"g_midi.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [17 x i8] c"g_midi.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype233 = internal constant [33 x i8] c"g_midi.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct234 = internal constant [37 x i8] c"g_midi.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [17 x i8] c"g_midi.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype235 = internal constant [33 x i8] c"g_midi.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice236 = internal constant [47 x i8] c"g_midi.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [21 x i8] c"g_midi.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype237 = internal constant [36 x i8] c"g_midi.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber238 = internal constant [46 x i8] c"g_midi.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [21 x i8] c"g_midi.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype239 = internal constant [36 x i8] c"g_midi.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer240 = internal constant [50 x i8] c"g_midi.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [16 x i8] c"g_midi.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype241 = internal constant [31 x i8] c"g_midi.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct242 = internal constant [40 x i8] c"g_midi.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_index = internal constant [13 x i8] c"g_midi.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [26 x i8] c"g_midi.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [63 x i8] c"g_midi.parm=index:Index value for the USB MIDI Gadget adapter.\00", section ".modinfo", align 1
@__param_str_id = internal constant [10 x i8] c"g_midi.id\00", align 1
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [25 x i8] c"g_midi.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [58 x i8] c"g_midi.parm=id:ID string for the USB MIDI Gadget adapter.\00", section ".modinfo", align 1
@__param_str_buflen = internal constant [14 x i8] c"g_midi.buflen\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@buflen = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_buflen = internal constant %struct.kernel_param { ptr @__param_str_buflen, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @buflen } }, section "__param", align 4
@__UNIQUE_ID_buflentype247 = internal constant [28 x i8] c"g_midi.parmtype=buflen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_buflen248 = internal constant [38 x i8] c"g_midi.parm=buflen:MIDI buffer length\00", section ".modinfo", align 1
@__param_str_qlen = internal constant [12 x i8] c"g_midi.qlen\00", align 1
@qlen = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_qlen = internal constant %struct.kernel_param { ptr @__param_str_qlen, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @qlen } }, section "__param", align 4
@__UNIQUE_ID_qlentype249 = internal constant [26 x i8] c"g_midi.parmtype=qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qlen250 = internal constant [57 x i8] c"g_midi.parm=qlen:USB read and write request queue length\00", section ".modinfo", align 1
@__param_str_in_ports = internal constant [16 x i8] c"g_midi.in_ports\00", align 1
@in_ports = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_in_ports = internal constant %struct.kernel_param { ptr @__param_str_in_ports, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @in_ports } }, section "__param", align 4
@__UNIQUE_ID_in_portstype251 = internal constant [30 x i8] c"g_midi.parmtype=in_ports:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_in_ports252 = internal constant [48 x i8] c"g_midi.parm=in_ports:Number of MIDI input ports\00", section ".modinfo", align 1
@__param_str_out_ports = internal constant [17 x i8] c"g_midi.out_ports\00", align 1
@out_ports = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_out_ports = internal constant %struct.kernel_param { ptr @__param_str_out_ports, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @out_ports } }, section "__param", align 4
@__UNIQUE_ID_out_portstype253 = internal constant [31 x i8] c"g_midi.parmtype=out_ports:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_out_ports254 = internal constant [50 x i8] c"g_midi.parm=out_ports:Number of MIDI output ports\00", section ".modinfo", align 1
@__initcall__kmod_g_midi__255_185_midi_driver_init6 = internal global ptr @midi_driver_init, section ".initcall6.init", align 4
@midi_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @longname, ptr @device_desc, ptr @dev_strings, i32 3, i8 0, ptr @midi_bind, ptr @midi_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_midi_driver_exit = internal global ptr @midi_driver_exit, section ".exitcall.exit", align 4
@longname = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIDI Gadget\00", [20 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 -19689, i16 1024, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Grey Innovation\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIDI Gadget\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIDI\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"midi\00", [27 x i8] zeroinitializer }, align 32
@fi_midi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@midi_config = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 -128, i16 2, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@midi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"midi_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/gmidi.c\00", [62 x i8] zeroinitializer }, align 32
@midi_bind._entry_ptr = internal global ptr @midi_bind._entry, section ".printk_index", align 4
@f_midi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 38, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 40, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 44, i32 14 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"buflen\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 48, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [5 x i8] c"qlen\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 52, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"in_ports\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"out_ports\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 60, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"midi_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 176, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 36, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 76, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 101, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 96, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 88, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 89, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 90, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 91, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 92, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 146, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"fi_midi\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 106, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"midi_config\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 116, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 169, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"f_midi\00", align 1
@___asan_gen_.81 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/gmidi.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 107, i32 29 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_bcdDevice236, ptr @__UNIQUE_ID_bcdDevicetype235, ptr @__UNIQUE_ID_buflen248, ptr @__UNIQUE_ID_buflentype247, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_iManufacturer240, ptr @__UNIQUE_ID_iManufacturertype239, ptr @__UNIQUE_ID_iProduct242, ptr @__UNIQUE_ID_iProducttype241, ptr @__UNIQUE_ID_iSerialNumber238, ptr @__UNIQUE_ID_iSerialNumbertype237, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idProduct234, ptr @__UNIQUE_ID_idProducttype233, ptr @__UNIQUE_ID_idVendor232, ptr @__UNIQUE_ID_idVendortype231, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_in_ports252, ptr @__UNIQUE_ID_in_portstype251, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_out_ports254, ptr @__UNIQUE_ID_out_portstype253, ptr @__UNIQUE_ID_qlen250, ptr @__UNIQUE_ID_qlentype249, ptr @__exitcall_midi_driver_exit, ptr @__initcall__kmod_g_midi__255_185_midi_driver_init6, ptr @__param_bcdDevice, ptr @__param_buflen, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_id, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_in_ports, ptr @__param_index, ptr @__param_out_ports, ptr @__param_qlen, ptr @midi_bind._entry, ptr @midi_bind._entry_ptr, ptr @midi_driver_exit, ptr @coverwrite, ptr @index, ptr @id, ptr @buflen, ptr @qlen, ptr @in_ports, ptr @out_ports, ptr @midi_driver, ptr @longname, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fi_midi, ptr @midi_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @f_midi], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buflen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @longname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_midi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_midi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @midi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @midi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @midi_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.4) #4
  store ptr %call, ptr @fi_midi, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @index, align 4
  %index = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %index, align 4
  %3 = load ptr, ptr @id, align 4
  %id = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %id, align 4
  %5 = load i32, ptr @in_ports, align 4
  %in_ports = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %in_ports to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %in_ports, align 4
  %7 = load i32, ptr @out_ports, align 4
  %out_ports = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %out_ports to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %out_ports, align 4
  %9 = load i32, ptr @buflen, align 4
  %buflen = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buflen, align 4
  %11 = load i32, ptr @qlen, align 4
  %qlen = getelementptr inbounds %struct.f_midi_opts, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %qlen, align 4
  %call3 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.put_crit_edge, label %if.end5

if.end.put_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %put

if.end5:                                          ; preds = %if.end
  %13 = load i8, ptr @strings_dev, align 4
  store i8 %13, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %14 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %15 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3), align 4
  store i8 %15, ptr getelementptr inbounds (%struct.usb_configuration, ptr @midi_config, i32 0, i32 6), align 1
  %call6 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @midi_config, ptr noundef nonnull @midi_bind_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.put_crit_edge, label %if.end9

if.end5.put_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %put

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @longname) #7
  br label %cleanup

put:                                              ; preds = %if.end5.put_crit_edge, %if.end.put_crit_edge
  %status.0 = phi i32 [ %call3, %if.end.put_crit_edge ], [ %call6, %if.end5.put_crit_edge ]
  %16 = load ptr, ptr @fi_midi, align 4
  tail call void @usb_put_function_instance(ptr noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %put, %if.end9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %status.0, %put ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_unbind(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_midi, align 4
  tail call void @usb_put_function(ptr noundef %0) #4
  %1 = load ptr, ptr @fi_midi, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_bind_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fi_midi, align 4
  %call = tail call ptr @usb_get_function(ptr noundef %0) #4
  store ptr %call, ptr @f_midi, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @f_midi, align 4
  tail call void @usb_put_function(ptr noundef %2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_author228, !1, !"__UNIQUE_ID_author228", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file229, !3, !"__UNIQUE_ID_file229", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_license230, !3, !"__UNIQUE_ID_license230", i1 false, i1 false}
!5 = !{ptr @__param_idVendor, !6, !"__param_idVendor", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_idVendortype231, !6, !"__UNIQUE_ID_idVendortype231", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_idVendor232, !6, !"__UNIQUE_ID_idVendor232", i1 false, i1 false}
!9 = !{ptr @__param_idProduct, !6, !"__param_idProduct", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_idProducttype233, !6, !"__UNIQUE_ID_idProducttype233", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_idProduct234, !6, !"__UNIQUE_ID_idProduct234", i1 false, i1 false}
!12 = !{ptr @__param_bcdDevice, !6, !"__param_bcdDevice", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_bcdDevicetype235, !6, !"__UNIQUE_ID_bcdDevicetype235", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_bcdDevice236, !6, !"__UNIQUE_ID_bcdDevice236", i1 false, i1 false}
!15 = !{ptr @__param_iSerialNumber, !6, !"__param_iSerialNumber", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_iSerialNumbertype237, !6, !"__UNIQUE_ID_iSerialNumbertype237", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_iSerialNumber238, !6, !"__UNIQUE_ID_iSerialNumber238", i1 false, i1 false}
!18 = !{ptr @__param_iManufacturer, !6, !"__param_iManufacturer", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_iManufacturertype239, !6, !"__UNIQUE_ID_iManufacturertype239", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_iManufacturer240, !6, !"__UNIQUE_ID_iManufacturer240", i1 false, i1 false}
!21 = !{ptr @__param_iProduct, !6, !"__param_iProduct", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_iProducttype241, !6, !"__UNIQUE_ID_iProducttype241", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_iProduct242, !6, !"__UNIQUE_ID_iProduct242", i1 false, i1 false}
!24 = !{ptr @__param_index, !25, !"__param_index", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 41, i32 1}
!26 = !{ptr @__UNIQUE_ID_indextype243, !25, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_index244, !28, !"__UNIQUE_ID_index244", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 42, i32 1}
!29 = !{ptr @__param_id, !30, !"__param_id", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 45, i32 1}
!31 = !{ptr @__UNIQUE_ID_idtype245, !30, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_id246, !33, !"__UNIQUE_ID_id246", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 46, i32 1}
!34 = !{ptr @__param_buflen, !35, !"__param_buflen", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 49, i32 1}
!36 = !{ptr @__UNIQUE_ID_buflentype247, !35, !"__UNIQUE_ID_buflentype247", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_buflen248, !38, !"__UNIQUE_ID_buflen248", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 50, i32 1}
!39 = !{ptr @__param_qlen, !40, !"__param_qlen", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 53, i32 1}
!41 = !{ptr @__UNIQUE_ID_qlentype249, !40, !"__UNIQUE_ID_qlentype249", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_qlen250, !43, !"__UNIQUE_ID_qlen250", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 54, i32 1}
!44 = !{ptr @__param_in_ports, !45, !"__param_in_ports", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 57, i32 1}
!46 = !{ptr @__UNIQUE_ID_in_portstype251, !45, !"__UNIQUE_ID_in_portstype251", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_in_ports252, !48, !"__UNIQUE_ID_in_ports252", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 58, i32 1}
!49 = !{ptr @__param_out_ports, !50, !"__param_out_ports", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 61, i32 1}
!51 = !{ptr @__UNIQUE_ID_out_portstype253, !50, !"__UNIQUE_ID_out_portstype253", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_out_ports254, !53, !"__UNIQUE_ID_out_ports254", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 62, i32 1}
!54 = !{ptr @__initcall__kmod_g_midi__255_185_midi_driver_init6, !55, !"__initcall__kmod_g_midi__255_185_midi_driver_init6", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 185, i32 1}
!56 = !{ptr @__exitcall_midi_driver_exit, !55, !"__exitcall_midi_driver_exit", i1 false, i1 false}
!57 = !{ptr @coverwrite, !6, !"coverwrite", i1 false, i1 false}
!58 = !{ptr @__param_str_idVendor, !6, !"__param_str_idVendor", i1 false, i1 false}
!59 = !{ptr @__param_str_idProduct, !6, !"__param_str_idProduct", i1 false, i1 false}
!60 = !{ptr @__param_str_bcdDevice, !6, !"__param_str_bcdDevice", i1 false, i1 false}
!61 = !{ptr @__param_str_iSerialNumber, !6, !"__param_str_iSerialNumber", i1 false, i1 false}
!62 = !{ptr @__param_str_iManufacturer, !6, !"__param_str_iManufacturer", i1 false, i1 false}
!63 = !{ptr @__param_str_iProduct, !6, !"__param_str_iProduct", i1 false, i1 false}
!64 = !{ptr @__param_str_index, !25, !"__param_str_index", i1 false, i1 false}
!65 = !{ptr @index, !66, !"index", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 40, i32 12}
!67 = !{ptr @__param_str_id, !30, !"__param_str_id", i1 false, i1 false}
!68 = !{ptr @id, !69, !"id", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 44, i32 14}
!70 = !{ptr @__param_str_buflen, !35, !"__param_str_buflen", i1 false, i1 false}
!71 = !{ptr @buflen, !72, !"buflen", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 48, i32 21}
!73 = !{ptr @__param_str_qlen, !40, !"__param_str_qlen", i1 false, i1 false}
!74 = !{ptr @qlen, !75, !"qlen", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 52, i32 21}
!76 = !{ptr @__param_str_in_ports, !45, !"__param_str_in_ports", i1 false, i1 false}
!77 = !{ptr @in_ports, !78, !"in_ports", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 56, i32 21}
!79 = !{ptr @__param_str_out_ports, !50, !"__param_str_out_ports", i1 false, i1 false}
!80 = !{ptr @out_ports, !81, !"out_ports", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 60, i32 21}
!82 = !{ptr @midi_driver, !83, !"midi_driver", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 176, i32 36}
!84 = !{ptr @longname, !85, !"longname", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 36, i32 19}
!86 = !{ptr @device_desc, !87, !"device_desc", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 76, i32 37}
!88 = !{ptr @dev_strings, !89, !"dev_strings", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 101, i32 35}
!90 = !{ptr @stringtab_dev, !91, !"stringtab_dev", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 96, i32 34}
!92 = !{ptr @.str, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 89, i32 36}
!94 = !{ptr @.str.1, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 90, i32 31}
!96 = !{ptr @.str.2, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 91, i32 30}
!98 = !{ptr @.str.3, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 92, i32 31}
!100 = !{ptr @strings_dev, !101, !"strings_dev", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 88, i32 26}
!102 = !{ptr @.str.4, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 146, i32 38}
!104 = !{ptr @.str.5, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 169, i32 2}
!106 = !{ptr @.str.6, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.7, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @midi_bind._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @midi_bind._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @fi_midi, !111, !"fi_midi", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 106, i32 38}
!112 = !{ptr @midi_config, !113, !"midi_config", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 116, i32 33}
!114 = !{ptr @f_midi, !115, !"f_midi", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/legacy/gmidi.c", i32 107, i32 29}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
