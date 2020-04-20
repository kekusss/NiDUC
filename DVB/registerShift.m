function shiftedRegister = registerShift(sync, xorOutput)
    shiftedRegister = sync;
    for i = 15 : -1 : 2
        shiftedRegister(i) = shiftedRegister(i-1);
    end
    shiftedRegister(1) = xorOutput;
end

